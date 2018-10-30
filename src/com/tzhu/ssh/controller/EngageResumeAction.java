package com.tzhu.ssh.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;

import com.tzhu.ssh.appcomm.base.BaseAction;
import com.tzhu.ssh.appcomm.util.Page;
import com.tzhu.ssh.biz.EngageMajorReleaseBizI;
import com.tzhu.ssh.biz.EngageResumeBizI;

import com.tzhu.ssh.entity.EngageMajorRelease;
import com.tzhu.ssh.entity.EngageResume;

/**
 * 功能说明:简历管理：应聘者申请职位，HR查询简历等
 * @author 洪森权 
 * 2018-7-30
 */
@ParentPackage(value = "struts-default")
@Namespace("/er")
@Controller
@Scope(value = "prototype")
public class EngageResumeAction extends BaseAction implements
		ModelDriven<EngageResume> {
	
	/**
	 * 去填写简历页面
	 * 对象：应聘者
	 * @return
	 */
	@Action(value = "toFillResume", results = { @Result(name = "toFillResume", location = "/admin/engage/engage_resume_regist_candidate.jsp") })
	public String tofillResume(){
		
		requestMap.put("engageMajorRelease", engageMajorRelease);
		
		return "toFillResume";
	}
	
	/**
	 * 简历填写完提交业务：提交内容添加进数据库，同时跳转至简历状态查询action
	 * 对象：应聘者
	 * @return
	 */
	@Action(value = "fillResume", results = { @Result(name = "toResumeStatusSearch", type = "redirectAction", location = "resumeStatusSearch_candidate?page.pageNo=1&page.pageSize=10") })
	public String fillResume(){

		
		// 1 将简历填写的数据存入数据库中
		// 1.1 先从数据库中的招聘职位信息从数据库中取出放入engageResume对象中
		Integer mreId = engageMajorRelease.getMreId();// 先获取要申请职位的id
		Object[] param = {mreId};	
		String hql = " from EngageMajorRelease where mreId=? ";// 查询数据库中该职位的所有信息
		EngageMajorRelease emr = engageMajorReleaseBizI.get(hql, param);
		engageResume.setEngageType(emr.getEngageType());
		engageResume.setHumanMajorKindName(emr.getMajorKindName());
		engageResume.setHumanMajorName(emr.getMajorName());
		// 1.2 设置简历审核状态
		engageResume.setCheckStatus(0);
		// 1.3 设置图片上传及路径
		String realpath = ServletActionContext.getServletContext().getRealPath("\\admin\\engage\\upload");// 获取要保存文件夹的绝对路径，也可自定义路径
		System.out.println(realpath);
		File file = new File(realpath);
		if (!file.exists()){
			file.mkdirs();
		}
		try {
			FileUtils.copyFile(humanImg, new File(file, humanImgFileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		engageResume.setHumanPicture(humanImgFileName);
		// 1.4 将前端页面的填写内容放入engageResume对象中（领域对象完成此动作）
		
		// 2 将engageResume对象存入数据库中
		engageResumeBizI.save(engageResume);
		
		// 3 跳转至简历状态查询业务
		
		return "toResumeStatusSearch";
	}
	
	
	/**
	 * 简历状态查询
	 * 对象：应聘者
	 * @return
	 */
	@Action(value = "resumeStatusSearch_candidate", results = { @Result(name = "resumeStatusSearch_candidate", location = "/admin/engage/engage_major_resumestatus_search_candidate.jsp") })
	public String resumeStatusSearch_candidate(){
		
		
		// 1、先从获取表中数据总的条数
		StringBuffer countHql = new StringBuffer(" select count(*) from EngageResume where 1=1 ");
		List<Object> listCountHqlParam = new ArrayList<Object>();
		createCountHql(countHql, listCountHqlParam, engageResume);
		Long engageResumeAmount = engageResumeBizI.count(countHql.toString(), listCountHqlParam);
				
		// 2、设置Page对象page的总的记录，用于计算pageCount
		page.setTotalCount(Integer.valueOf(engageResumeAmount.toString()));

		// 3、分页查询语句：不为空的属性进行StringBuffer拼接构成查询语句
		StringBuffer searchHql = new StringBuffer(" from EngageResume where 1=1 ");
		List<Object> listSearchHqlParam = new ArrayList<Object>();
		createSearchHql(searchHql, listSearchHqlParam, engageResume);
		List<EngageResume> listEngageResume = engageResumeBizI.find(searchHql.toString(), listSearchHqlParam, page.getPageNo(), page.getPageSize());
				
		requestMap.put("listEngageResume", listEngageResume);
		requestMap.put("page", page);
		requestMap.put("engageResume", engageResume);
		
		return "resumeStatusSearch_candidate";
	}
	
	/**
	 * 取消申请
	 * 对象：应聘者
	 * @return
	 */
	@Action(value = "cancel_candidate", results = { @Result(name = "toResumeStatusSearch", type = "redirectAction", location = "resumeStatusSearch_candidate?page.pageNo=1&page.pageSize=10") })
	public String cancel_candidate(){
	
		// 1 删除申请
		engageResumeBizI.delete(engageResume);
		
		// 2 跳转至查询页
		return "toResumeStatusSearch";
	}
	
	
	
	/**
	 * 带条件分页简历筛选查询页
	 * 对象：HR或HR主管
	 * @return
	 */
	@Action(value = "resumeSearch_hr", results = { @Result(name = "resumeSearch_hr", location = "/admin/engage/engage_major_resume_search_hr.jsp") })
	public String resumeSearch_hr(){
		
		// 1、先从获取表中数据总的条数
		StringBuffer countHql = new StringBuffer(" select count(*) from EngageResume where 1=1 ");
		List<Object> listCountHqlParam = new ArrayList<Object>();
		createCountHql(countHql, listCountHqlParam, engageResume);
		Long engageResumeAmount = engageResumeBizI.count(countHql.toString(), listCountHqlParam);
				
		// 2、设置Page对象page的总的记录，用于计算pageCount
		page.setTotalCount(Integer.valueOf(engageResumeAmount.toString()));

		// 3、分页查询语句：不为空的属性进行StringBuffer拼接构成查询语句
		StringBuffer searchHql = new StringBuffer(" from EngageResume where 1=1 ");
		List<Object> listSearchHqlParam = new ArrayList<Object>();
		createSearchHql(searchHql, listSearchHqlParam, engageResume);
		List<EngageResume> listEngageResume = engageResumeBizI.find(searchHql.toString(), listSearchHqlParam, page.getPageNo(), page.getPageSize());
				
		requestMap.put("listEngageResume", listEngageResume);
		requestMap.put("page", page);
		requestMap.put("engageResume", engageResume);
		
		return "resumeSearch_hr";
	}
	
	
	
	/**
	 * 简历详情查看
	 * 对象：HR及HR主管
	 */
	@Action(value = "resumeinfo", results = { @Result(name = "resumeinfo", location = "/admin/engage/engage_resume_resumeinfo_hr.jsp") })
	public String resumeCheck(){
		
		// 查询申请人员的详细信息
		String hql = " from EngageResume where resId=? ";
		Object[] param = {engageResume.getResId()};
		EngageResume er = engageResumeBizI.get(hql, param);
		
		requestMap.put("er", er);
		return "resumeinfo";
	}
	
	/**
	 * 简历详情审核：通过
	 * 对象：HR及HR主管
	 */
	@Action(value = "resumepass", results = { @Result(name = "resumeSearch_hr", type = "redirectAction", location = "resumeSearch_hr?page.pageNo=1&page.pageSize=10") })
	public String resumePass(){
		
		String hql = " from EngageResume where resId=? ";
		Object[] param = {engageResume.getResId()};
		EngageResume er = engageResumeBizI.get(hql, param);
		
		er.setCheckStatus(1);
		
		engageResumeBizI.saveOrUpdate(er);
		return "resumeSearch_hr";
	}
	
	/**
	 * 简历详情审核：未通过
	 * 对象：HR及HR主管
	 */
	@Action(value = "resumenopass", results = { @Result(name = "resumeSearch_hr", type = "redirectAction", location = "resumeSearch_hr?page.pageNo=1&page.pageSize=10") })
	public String resumeNoPass(){
		
		String hql = " from EngageResume where resId=? ";
		Object[] param = {engageResume.getResId()};
		EngageResume er = engageResumeBizI.get(hql, param);
		
		er.setCheckStatus(2);
		
		engageResumeBizI.saveOrUpdate(er);
		return "resumeSearch_hr";
	}
	
	
	
	
	/**
	 * 功能说明：根据条件进行字符串拼接，获得完整的带条件hql条目数查询语句
	 * @param countHql
	 * @param obj
	 */
	private void createCountHql(StringBuffer countHql,
			List<Object> listCountHqlParam, Object obj) {
		Class objClass = obj.getClass();// 得到类对象
		Field[] fs = objClass.getDeclaredFields();// 得到属性集合
		for (Field f : fs) {// 遍历属性
			f.setAccessible(true); // 设置属性是可以访问的(私有的也可以)
			Object val; 
			try {
				val = f.get(obj);// 得到此属性的值
				if (val != null && !"全部".equals(val.toString()) && val != "") {// 只要有1个属性不为空,那么就不是所有的属性值都为空
					countHql.append(" and "+f.getName()+"=? ");
					listCountHqlParam.add(val);
				}
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	
	/**
	 * 功能说明：根据条件进行字符串拼接，获得完整的带条件hql查询语句
	 * @param searchHql
	 * @param listParam
	 * @param obj
	 */
	private void createSearchHql(StringBuffer searchHql,
			List<Object> listSearchHqlParam, Object obj) {
		Class objClass = obj.getClass();// 得到类对象
		Field[] fs = objClass.getDeclaredFields();// 得到属性集合
		for (Field f : fs) {// 遍历属性
			f.setAccessible(true); // 设置属性是可以访问的(私有的也可以)
			Object val; 
			try {
				val = f.get(obj);// 得到此属性的值
				if (val != null && !"全部".equals(val.toString()) && val != "") {// 只要有1个属性不为空,那么就不是所有的属性值都为空
					searchHql.append(" and "+f.getName()+"=? ");
					listSearchHqlParam.add(val);
				}
				
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
	
	/**
	 * page的属性封装
	 */
	private Page page;

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	
	/**
	 * EngageResume业务层注入
	 */
	private EngageResumeBizI engageResumeBizI;
	@Resource(name = "engageResumeBizI")
	public void setEngageResumeBizI(EngageResumeBizI engageResumeBizI) {
		this.engageResumeBizI = engageResumeBizI;
	}
	
	/**
	 * EngageMajorReleaseBizI业务层注入
	 */
	private EngageMajorReleaseBizI engageMajorReleaseBizI;
	@Resource(name = "engageMajorReleaseBizI")
	public void setEngageMajorReleaseBizI(
			EngageMajorReleaseBizI engageMajorReleaseBizI) {
		this.engageMajorReleaseBizI = engageMajorReleaseBizI;
	}

	/**
	 * 领域对象
	 */
	private EngageResume engageResume = new EngageResume();
	@Override
	public EngageResume getModel() {
		return engageResume;
	}
	
    /**
     * 属性封装
     */
	private EngageMajorRelease engageMajorRelease;
	public EngageMajorRelease getEngageMajorRelease() {
		return engageMajorRelease;
	}
	public void setEngageMajorRelease(EngageMajorRelease engageMajorRelease) {
		this.engageMajorRelease = engageMajorRelease;
	}
	
	/**
	 * 文件上传
	 */
	private static final long serialVersionUID = 1L;
	
	private File humanImg;// 得到上传的文件
	
	private String humanImgContentType;// 得到文件的类型 exe不行 rar
	
	private String humanImgFileName;// 得到文件的名称

	public File getHumanImg() {
		return humanImg;
	}

	public void setHumanImg(File humanImg) {
		this.humanImg = humanImg;
	}

	public String getHumanImgContentType() {
		return humanImgContentType;
	}

	public void setHumanImgContentType(String humanImgContentType) {
		this.humanImgContentType = humanImgContentType;
	}

	public String getHumanImgFileName() {
		return humanImgFileName;
	}

	public void setHumanImgFileName(String humanImgFileName) {
		this.humanImgFileName = humanImgFileName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
