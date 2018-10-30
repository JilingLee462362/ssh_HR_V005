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
 * ����˵��:��������ӦƸ������ְλ��HR��ѯ������
 * @author ��ɭȨ 
 * 2018-7-30
 */
@ParentPackage(value = "struts-default")
@Namespace("/er")
@Controller
@Scope(value = "prototype")
public class EngageResumeAction extends BaseAction implements
		ModelDriven<EngageResume> {
	
	/**
	 * ȥ��д����ҳ��
	 * ����ӦƸ��
	 * @return
	 */
	@Action(value = "toFillResume", results = { @Result(name = "toFillResume", location = "/admin/engage/engage_resume_regist_candidate.jsp") })
	public String tofillResume(){
		
		requestMap.put("engageMajorRelease", engageMajorRelease);
		
		return "toFillResume";
	}
	
	/**
	 * ������д���ύҵ���ύ������ӽ����ݿ⣬ͬʱ��ת������״̬��ѯaction
	 * ����ӦƸ��
	 * @return
	 */
	@Action(value = "fillResume", results = { @Result(name = "toResumeStatusSearch", type = "redirectAction", location = "resumeStatusSearch_candidate?page.pageNo=1&page.pageSize=10") })
	public String fillResume(){

		
		// 1 ��������д�����ݴ������ݿ���
		// 1.1 �ȴ����ݿ��е���Ƹְλ��Ϣ�����ݿ���ȡ������engageResume������
		Integer mreId = engageMajorRelease.getMreId();// �Ȼ�ȡҪ����ְλ��id
		Object[] param = {mreId};	
		String hql = " from EngageMajorRelease where mreId=? ";// ��ѯ���ݿ��и�ְλ��������Ϣ
		EngageMajorRelease emr = engageMajorReleaseBizI.get(hql, param);
		engageResume.setEngageType(emr.getEngageType());
		engageResume.setHumanMajorKindName(emr.getMajorKindName());
		engageResume.setHumanMajorName(emr.getMajorName());
		// 1.2 ���ü������״̬
		engageResume.setCheckStatus(0);
		// 1.3 ����ͼƬ�ϴ���·��
		String realpath = ServletActionContext.getServletContext().getRealPath("\\admin\\engage\\upload");// ��ȡҪ�����ļ��еľ���·����Ҳ���Զ���·��
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
		// 1.4 ��ǰ��ҳ�����д���ݷ���engageResume�����У����������ɴ˶�����
		
		// 2 ��engageResume����������ݿ���
		engageResumeBizI.save(engageResume);
		
		// 3 ��ת������״̬��ѯҵ��
		
		return "toResumeStatusSearch";
	}
	
	
	/**
	 * ����״̬��ѯ
	 * ����ӦƸ��
	 * @return
	 */
	@Action(value = "resumeStatusSearch_candidate", results = { @Result(name = "resumeStatusSearch_candidate", location = "/admin/engage/engage_major_resumestatus_search_candidate.jsp") })
	public String resumeStatusSearch_candidate(){
		
		
		// 1���ȴӻ�ȡ���������ܵ�����
		StringBuffer countHql = new StringBuffer(" select count(*) from EngageResume where 1=1 ");
		List<Object> listCountHqlParam = new ArrayList<Object>();
		createCountHql(countHql, listCountHqlParam, engageResume);
		Long engageResumeAmount = engageResumeBizI.count(countHql.toString(), listCountHqlParam);
				
		// 2������Page����page���ܵļ�¼�����ڼ���pageCount
		page.setTotalCount(Integer.valueOf(engageResumeAmount.toString()));

		// 3����ҳ��ѯ��䣺��Ϊ�յ����Խ���StringBufferƴ�ӹ��ɲ�ѯ���
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
	 * ȡ������
	 * ����ӦƸ��
	 * @return
	 */
	@Action(value = "cancel_candidate", results = { @Result(name = "toResumeStatusSearch", type = "redirectAction", location = "resumeStatusSearch_candidate?page.pageNo=1&page.pageSize=10") })
	public String cancel_candidate(){
	
		// 1 ɾ������
		engageResumeBizI.delete(engageResume);
		
		// 2 ��ת����ѯҳ
		return "toResumeStatusSearch";
	}
	
	
	
	/**
	 * ��������ҳ����ɸѡ��ѯҳ
	 * ����HR��HR����
	 * @return
	 */
	@Action(value = "resumeSearch_hr", results = { @Result(name = "resumeSearch_hr", location = "/admin/engage/engage_major_resume_search_hr.jsp") })
	public String resumeSearch_hr(){
		
		// 1���ȴӻ�ȡ���������ܵ�����
		StringBuffer countHql = new StringBuffer(" select count(*) from EngageResume where 1=1 ");
		List<Object> listCountHqlParam = new ArrayList<Object>();
		createCountHql(countHql, listCountHqlParam, engageResume);
		Long engageResumeAmount = engageResumeBizI.count(countHql.toString(), listCountHqlParam);
				
		// 2������Page����page���ܵļ�¼�����ڼ���pageCount
		page.setTotalCount(Integer.valueOf(engageResumeAmount.toString()));

		// 3����ҳ��ѯ��䣺��Ϊ�յ����Խ���StringBufferƴ�ӹ��ɲ�ѯ���
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
	 * ��������鿴
	 * ����HR��HR����
	 */
	@Action(value = "resumeinfo", results = { @Result(name = "resumeinfo", location = "/admin/engage/engage_resume_resumeinfo_hr.jsp") })
	public String resumeCheck(){
		
		// ��ѯ������Ա����ϸ��Ϣ
		String hql = " from EngageResume where resId=? ";
		Object[] param = {engageResume.getResId()};
		EngageResume er = engageResumeBizI.get(hql, param);
		
		requestMap.put("er", er);
		return "resumeinfo";
	}
	
	/**
	 * ����������ˣ�ͨ��
	 * ����HR��HR����
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
	 * ����������ˣ�δͨ��
	 * ����HR��HR����
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
	 * ����˵�����������������ַ���ƴ�ӣ���������Ĵ�����hql��Ŀ����ѯ���
	 * @param countHql
	 * @param obj
	 */
	private void createCountHql(StringBuffer countHql,
			List<Object> listCountHqlParam, Object obj) {
		Class objClass = obj.getClass();// �õ������
		Field[] fs = objClass.getDeclaredFields();// �õ����Լ���
		for (Field f : fs) {// ��������
			f.setAccessible(true); // ���������ǿ��Է��ʵ�(˽�е�Ҳ����)
			Object val; 
			try {
				val = f.get(obj);// �õ������Ե�ֵ
				if (val != null && !"ȫ��".equals(val.toString()) && val != "") {// ֻҪ��1�����Բ�Ϊ��,��ô�Ͳ������е�����ֵ��Ϊ��
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
	 * ����˵�����������������ַ���ƴ�ӣ���������Ĵ�����hql��ѯ���
	 * @param searchHql
	 * @param listParam
	 * @param obj
	 */
	private void createSearchHql(StringBuffer searchHql,
			List<Object> listSearchHqlParam, Object obj) {
		Class objClass = obj.getClass();// �õ������
		Field[] fs = objClass.getDeclaredFields();// �õ����Լ���
		for (Field f : fs) {// ��������
			f.setAccessible(true); // ���������ǿ��Է��ʵ�(˽�е�Ҳ����)
			Object val; 
			try {
				val = f.get(obj);// �õ������Ե�ֵ
				if (val != null && !"ȫ��".equals(val.toString()) && val != "") {// ֻҪ��1�����Բ�Ϊ��,��ô�Ͳ������е�����ֵ��Ϊ��
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
	 * page�����Է�װ
	 */
	private Page page;

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	
	/**
	 * EngageResumeҵ���ע��
	 */
	private EngageResumeBizI engageResumeBizI;
	@Resource(name = "engageResumeBizI")
	public void setEngageResumeBizI(EngageResumeBizI engageResumeBizI) {
		this.engageResumeBizI = engageResumeBizI;
	}
	
	/**
	 * EngageMajorReleaseBizIҵ���ע��
	 */
	private EngageMajorReleaseBizI engageMajorReleaseBizI;
	@Resource(name = "engageMajorReleaseBizI")
	public void setEngageMajorReleaseBizI(
			EngageMajorReleaseBizI engageMajorReleaseBizI) {
		this.engageMajorReleaseBizI = engageMajorReleaseBizI;
	}

	/**
	 * �������
	 */
	private EngageResume engageResume = new EngageResume();
	@Override
	public EngageResume getModel() {
		return engageResume;
	}
	
    /**
     * ���Է�װ
     */
	private EngageMajorRelease engageMajorRelease;
	public EngageMajorRelease getEngageMajorRelease() {
		return engageMajorRelease;
	}
	public void setEngageMajorRelease(EngageMajorRelease engageMajorRelease) {
		this.engageMajorRelease = engageMajorRelease;
	}
	
	/**
	 * �ļ��ϴ�
	 */
	private static final long serialVersionUID = 1L;
	
	private File humanImg;// �õ��ϴ����ļ�
	
	private String humanImgContentType;// �õ��ļ������� exe���� rar
	
	private String humanImgFileName;// �õ��ļ�������

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
