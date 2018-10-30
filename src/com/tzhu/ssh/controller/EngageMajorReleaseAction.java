package com.tzhu.ssh.controller;


import java.lang.reflect.Field;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts.taglib.html.PageSchemeTag;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.tzhu.ssh.appcomm.base.BaseAction;
import com.tzhu.ssh.appcomm.util.Page;
import com.tzhu.ssh.appcomm.util.TimeUtil;
import com.tzhu.ssh.biz.EngageMajorReleaseBizI;
import com.tzhu.ssh.entity.EngageMajorRelease;
import com.tzhu.ssh.entity.Userinfo;

/**
 * 功能说明:招聘管理：信息发布、修改、查询（多条件分页查询）
 * 
 * @author 洪森权 2018-7-26
 */
@ParentPackage(value = "struts-default")
@Namespace("/emr")
@Controller
@Scope(value = "prototype")
public class EngageMajorReleaseAction extends BaseAction implements
		ModelDriven<EngageMajorRelease> {

	/**
	 * 招聘信息提交
	 * 对象：HR及HR主管
	 * @return
	 */
	@Action(value = "submit", results = { @Result(name = "submitSuccess", type = "redirectAction", location = "pagingSearch_hr?page.pageNo=1&page.pageSize=10") })
	public String submit() {
		
		// 设置登记时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");//设置日期格式
		String currentDate = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		
		engageMajorRelease.setRegistTime(Timestamp.valueOf(currentDate));

		engageMajorReleaseBizI.save(engageMajorRelease);

		return "submitSuccess";

	}

	/**
	 * 招聘信息查询（查询初始页），使用Page工具类
	 * 对象：HR及HR主管
	 * @return
	 */
	@Action(value = "pagingSearch_hr", results = { @Result(name = "pagingSearchSuccess", location = "/admin/engage/engage_major_release_search_hr.jsp") })
	public String pagingSearch_hr() {

		// 1、先从获取表中数据总的条数
		StringBuffer countHql = new StringBuffer(" select count(*) from EngageMajorRelease where 1=1 ");
		List<Object> listCountHqlParam = new ArrayList<Object>();
		createCountHql(countHql, listCountHqlParam, engageMajorRelease);
		Long engageMajorReleaseAmount = engageMajorReleaseBizI.count(countHql.toString(), listCountHqlParam);
		System.out.println(engageMajorReleaseAmount.toString());
		
		// 2、设置Page对象page的总的记录，用于计算pageCount
		page.setTotalCount(Integer.valueOf(engageMajorReleaseAmount.toString()));

		// 3、分页查询语句：不为空的属性进行StringBuffer拼接构成查询语句
		StringBuffer searchHql = new StringBuffer(" from EngageMajorRelease where 1=1 ");
		List<Object> listSearchHqlParam = new ArrayList<Object>();
		createSearchHql(searchHql, listSearchHqlParam, engageMajorRelease);
		List<EngageMajorRelease> listEngageMajorRelease = engageMajorReleaseBizI.find(searchHql.toString(), listSearchHqlParam, page.getPageNo(), page.getPageSize());
		System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
		System.out.println("PageNo:"+page.getPageNo()+""+"PageSize:"+page.getPageSize());
		for (Object param : listSearchHqlParam) {
			System.out.println(param.toString());
		}
		for (EngageMajorRelease engageMajorRelease : listEngageMajorRelease) {
			System.out.println(engageMajorRelease.toString());
		}
		
		requestMap.put("listEngageMajorRelease", listEngageMajorRelease);
		requestMap.put("page", page);
		requestMap.put("engageMajorRelease", engageMajorRelease);
		return "pagingSearchSuccess";
	}
	
	/**
	 * 查询可申请职位（查询初始页）
	 * 对象：应聘者
	 * @return
	 */
	@Action(value = "pagingSearch_candidate", results = { @Result(name = "pagingSearchSuccess", location = "/admin/engage/engage_major_release_search_candidate.jsp") })
	public String pagingSearch_candidate() {

		// 1、先从获取表中数据总的条数
		StringBuffer countHql = new StringBuffer(" select count(*) from EngageMajorRelease where 1=1 ");
		List<Object> listCountHqlParam = new ArrayList<Object>();
		createCountHql(countHql, listCountHqlParam, engageMajorRelease);
		Long engageMajorReleaseAmount = engageMajorReleaseBizI.count(countHql.toString(), listCountHqlParam);
		
		// 2、设置Page对象page的总的记录，用于计算pageCount
		page.setTotalCount(Integer.valueOf(engageMajorReleaseAmount.toString()));

		// 3、分页查询语句：不为空的属性进行StringBuffer拼接构成查询语句
		StringBuffer searchHql = new StringBuffer(" from EngageMajorRelease where 1=1 ");
		List<Object> listSearchHqlParam = new ArrayList<Object>();
		createSearchHql(searchHql, listSearchHqlParam, engageMajorRelease);
		List<EngageMajorRelease> listEngageMajorRelease = engageMajorReleaseBizI.find(searchHql.toString(), listSearchHqlParam, page.getPageNo(), page.getPageSize());
		System.out.println("------------------------------------------------------");
		for (Object param : listSearchHqlParam) {
			System.out.println(param.toString());
		}
		for (EngageMajorRelease engageMajorRelease : listEngageMajorRelease) {
			System.out.println(engageMajorRelease.toString());
		}
		
		
		requestMap.put("listEngageMajorRelease", listEngageMajorRelease);
		requestMap.put("page", page);
		requestMap.put("engageMajorRelease", engageMajorRelease);
		return "pagingSearchSuccess";
	}
	
	
	/**
	 * 跳转招聘信息修改:从查询页跳转过来，跳转至修改页
	 * 对象：HR及HR主管
	 * @return
	 */
	@Action(value = "tochange", results = { @Result(name = "tochange", location = "/admin/engage/engage_major_release_change.jsp") })
	public String tochange() {
		
		// 获取对象主键id
		Integer mreId = engageMajorRelease.getMreId();
		Object[] param = {mreId};
		
		// 从数据库里获取对应的信息
		String hql = " from EngageMajorRelease where mreId=? ";
		EngageMajorRelease  emr = engageMajorReleaseBizI.get(hql, param);
		
		// 将emr信息一一放进领域对象中
		engageMajorRelease.setFirstKindName(emr.getFirstKindName());
		engageMajorRelease.setMajorKindName(emr.getMajorKindName());
		engageMajorRelease.setMajorName(emr.getMajorName());
		engageMajorRelease.setEngageType(emr.getEngageType());
		engageMajorRelease.setHumanAmount(emr.getHumanAmount());
		engageMajorRelease.setDeadline(emr.getDeadline());
		engageMajorRelease.setMajorDescribe(emr.getMajorDescribe());
		engageMajorRelease.setEngageRequired(emr.getEngageRequired());
		
		requestMap.put("engageMajorRelease", engageMajorRelease);
		return "tochange";

	}
	
	
	/**
	 * 提交职位发布的修改内容
	 * 对象：HR及HR主管
	 * @return
	 */
	@Action(value = "change", results = { @Result(name = "changesuccess", type = "redirectAction", location = "pagingSearch_hr?page.pageNo=1&page.pageSize=10") })
	public String change() {
		// 获取对象主键id
		Integer mreId = engageMajorRelease.getMreId();
		Object[] param = {mreId};
		
		// 从数据库里获取对应的信息
		String hql = " from EngageMajorRelease where mreId=? ";
		EngageMajorRelease  emr = engageMajorReleaseBizI.get(hql, param);
		
		// 设置修改值
		emr.setFirstKindName(engageMajorRelease.getFirstKindName());
		emr.setMajorKindName(engageMajorRelease.getMajorKindName());
		emr.setMajorName(engageMajorRelease.getMajorName());
		emr.setEngageType(engageMajorRelease.getEngageType());
		emr.setHumanAmount(engageMajorRelease.getHumanAmount());
		emr.setDeadline(engageMajorRelease.getDeadline());
		emr.setMajorDescribe(engageMajorRelease.getMajorDescribe());
		emr.setEngageRequired(engageMajorRelease.getEngageRequired());
		// 设置变更人
		Userinfo ui = (Userinfo)sessionMap.get("loginUI");
		emr.setChanger(ui.getUserName());
		// 设置变更时间
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp tt = Timestamp.valueOf(TimeUtil.gettimes());
		emr.setChangeTime(tt);
		
		engageMajorReleaseBizI.saveOrUpdate(emr);
		return "changesuccess";

	}
	
	/**
	 * 删除职位发布信息
	 * 对象：HR及HR主管
	 * @return
	 */
	@Action(value = "deleteEngageInfo", results = { @Result(name = "deletesuccess", type = "redirectAction", location = "pagingSearch_hr?page.pageNo=1&page.pageSize=10") })
	public String deleteEngageInfo() {
		
		engageMajorReleaseBizI.delete(engageMajorRelease);
		
		return "deletesuccess";

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
		
        //for (Object p : listParam) {
        //System.out.println("..........."+p.toString()+"...........");
		//}

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
		
        //for (Object p : listParam) {
        //System.out.println("..........."+p.toString()+"...........");
		//}

	}

	/**
	 * 招聘信息查询（带条件分页查询）
	 * 
	 * @return
	 */
	@Action(value = "multiConditionPagingSearch", results = { @Result(name = "multiConditionPagingSearchSuccess", location = "/admin/engage/engage_major_release_search.jsp") })
	public String MultiConditionPagingSearch() {

		return "multiConditionPagingSearchSuccess";

	}

	/**
	 * 招聘信息修改
	 * 
	 * @return
	 */
	/*
	 * @Action(value = "change", results = { @Result(name = "changesuccess",
	 * location = "/admin/engage/engage_major_release_change.jsp") }) public
	 * String change() {
	 * 
	 * String hql = " from "; engageMajorReleaseBizI.find(hql, param, page,
	 * rows) return "changesuccess";
	 * 
	 * }
	 */

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
	 * EngageMajorReleaseAction构造方法，判断action是否被成功访问
	 */
	public EngageMajorReleaseAction() {
		System.out
				.println(">>>>>>>>>>>>>>>>>>>>>>>调用EngageMajorReleaseAction<<<<<<<<<<<<<<<<<<");
	}

	/**
	 * 领域对象
	 */
	EngageMajorRelease engageMajorRelease = new EngageMajorRelease();

	@Override
	public EngageMajorRelease getModel() {
		return engageMajorRelease;
	}

	/**
	 * 业务层注入
	 */
	private EngageMajorReleaseBizI engageMajorReleaseBizI;

	@Resource(name = "engageMajorReleaseBizI")
	public void setEngageMajorReleaseBizI(
			EngageMajorReleaseBizI engageMajorReleaseBizI) {
		this.engageMajorReleaseBizI = engageMajorReleaseBizI;
	}

}
