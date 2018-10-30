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
 * ����˵��:��Ƹ������Ϣ�������޸ġ���ѯ����������ҳ��ѯ��
 * 
 * @author ��ɭȨ 2018-7-26
 */
@ParentPackage(value = "struts-default")
@Namespace("/emr")
@Controller
@Scope(value = "prototype")
public class EngageMajorReleaseAction extends BaseAction implements
		ModelDriven<EngageMajorRelease> {

	/**
	 * ��Ƹ��Ϣ�ύ
	 * ����HR��HR����
	 * @return
	 */
	@Action(value = "submit", results = { @Result(name = "submitSuccess", type = "redirectAction", location = "pagingSearch_hr?page.pageNo=1&page.pageSize=10") })
	public String submit() {
		
		// ���õǼ�ʱ��
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");//�������ڸ�ʽ
		String currentDate = df.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ�䣬Ҳ��ʹ�õ�ǰʱ���
		
		engageMajorRelease.setRegistTime(Timestamp.valueOf(currentDate));

		engageMajorReleaseBizI.save(engageMajorRelease);

		return "submitSuccess";

	}

	/**
	 * ��Ƹ��Ϣ��ѯ����ѯ��ʼҳ����ʹ��Page������
	 * ����HR��HR����
	 * @return
	 */
	@Action(value = "pagingSearch_hr", results = { @Result(name = "pagingSearchSuccess", location = "/admin/engage/engage_major_release_search_hr.jsp") })
	public String pagingSearch_hr() {

		// 1���ȴӻ�ȡ���������ܵ�����
		StringBuffer countHql = new StringBuffer(" select count(*) from EngageMajorRelease where 1=1 ");
		List<Object> listCountHqlParam = new ArrayList<Object>();
		createCountHql(countHql, listCountHqlParam, engageMajorRelease);
		Long engageMajorReleaseAmount = engageMajorReleaseBizI.count(countHql.toString(), listCountHqlParam);
		System.out.println(engageMajorReleaseAmount.toString());
		
		// 2������Page����page���ܵļ�¼�����ڼ���pageCount
		page.setTotalCount(Integer.valueOf(engageMajorReleaseAmount.toString()));

		// 3����ҳ��ѯ��䣺��Ϊ�յ����Խ���StringBufferƴ�ӹ��ɲ�ѯ���
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
	 * ��ѯ������ְλ����ѯ��ʼҳ��
	 * ����ӦƸ��
	 * @return
	 */
	@Action(value = "pagingSearch_candidate", results = { @Result(name = "pagingSearchSuccess", location = "/admin/engage/engage_major_release_search_candidate.jsp") })
	public String pagingSearch_candidate() {

		// 1���ȴӻ�ȡ���������ܵ�����
		StringBuffer countHql = new StringBuffer(" select count(*) from EngageMajorRelease where 1=1 ");
		List<Object> listCountHqlParam = new ArrayList<Object>();
		createCountHql(countHql, listCountHqlParam, engageMajorRelease);
		Long engageMajorReleaseAmount = engageMajorReleaseBizI.count(countHql.toString(), listCountHqlParam);
		
		// 2������Page����page���ܵļ�¼�����ڼ���pageCount
		page.setTotalCount(Integer.valueOf(engageMajorReleaseAmount.toString()));

		// 3����ҳ��ѯ��䣺��Ϊ�յ����Խ���StringBufferƴ�ӹ��ɲ�ѯ���
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
	 * ��ת��Ƹ��Ϣ�޸�:�Ӳ�ѯҳ��ת��������ת���޸�ҳ
	 * ����HR��HR����
	 * @return
	 */
	@Action(value = "tochange", results = { @Result(name = "tochange", location = "/admin/engage/engage_major_release_change.jsp") })
	public String tochange() {
		
		// ��ȡ��������id
		Integer mreId = engageMajorRelease.getMreId();
		Object[] param = {mreId};
		
		// �����ݿ����ȡ��Ӧ����Ϣ
		String hql = " from EngageMajorRelease where mreId=? ";
		EngageMajorRelease  emr = engageMajorReleaseBizI.get(hql, param);
		
		// ��emr��Ϣһһ�Ž����������
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
	 * �ύְλ�������޸�����
	 * ����HR��HR����
	 * @return
	 */
	@Action(value = "change", results = { @Result(name = "changesuccess", type = "redirectAction", location = "pagingSearch_hr?page.pageNo=1&page.pageSize=10") })
	public String change() {
		// ��ȡ��������id
		Integer mreId = engageMajorRelease.getMreId();
		Object[] param = {mreId};
		
		// �����ݿ����ȡ��Ӧ����Ϣ
		String hql = " from EngageMajorRelease where mreId=? ";
		EngageMajorRelease  emr = engageMajorReleaseBizI.get(hql, param);
		
		// �����޸�ֵ
		emr.setFirstKindName(engageMajorRelease.getFirstKindName());
		emr.setMajorKindName(engageMajorRelease.getMajorKindName());
		emr.setMajorName(engageMajorRelease.getMajorName());
		emr.setEngageType(engageMajorRelease.getEngageType());
		emr.setHumanAmount(engageMajorRelease.getHumanAmount());
		emr.setDeadline(engageMajorRelease.getDeadline());
		emr.setMajorDescribe(engageMajorRelease.getMajorDescribe());
		emr.setEngageRequired(engageMajorRelease.getEngageRequired());
		// ���ñ����
		Userinfo ui = (Userinfo)sessionMap.get("loginUI");
		emr.setChanger(ui.getUserName());
		// ���ñ��ʱ��
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp tt = Timestamp.valueOf(TimeUtil.gettimes());
		emr.setChangeTime(tt);
		
		engageMajorReleaseBizI.saveOrUpdate(emr);
		return "changesuccess";

	}
	
	/**
	 * ɾ��ְλ������Ϣ
	 * ����HR��HR����
	 * @return
	 */
	@Action(value = "deleteEngageInfo", results = { @Result(name = "deletesuccess", type = "redirectAction", location = "pagingSearch_hr?page.pageNo=1&page.pageSize=10") })
	public String deleteEngageInfo() {
		
		engageMajorReleaseBizI.delete(engageMajorRelease);
		
		return "deletesuccess";

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
		
        //for (Object p : listParam) {
        //System.out.println("..........."+p.toString()+"...........");
		//}

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
		
        //for (Object p : listParam) {
        //System.out.println("..........."+p.toString()+"...........");
		//}

	}

	/**
	 * ��Ƹ��Ϣ��ѯ����������ҳ��ѯ��
	 * 
	 * @return
	 */
	@Action(value = "multiConditionPagingSearch", results = { @Result(name = "multiConditionPagingSearchSuccess", location = "/admin/engage/engage_major_release_search.jsp") })
	public String MultiConditionPagingSearch() {

		return "multiConditionPagingSearchSuccess";

	}

	/**
	 * ��Ƹ��Ϣ�޸�
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
	 * EngageMajorReleaseAction���췽�����ж�action�Ƿ񱻳ɹ�����
	 */
	public EngageMajorReleaseAction() {
		System.out
				.println(">>>>>>>>>>>>>>>>>>>>>>>����EngageMajorReleaseAction<<<<<<<<<<<<<<<<<<");
	}

	/**
	 * �������
	 */
	EngageMajorRelease engageMajorRelease = new EngageMajorRelease();

	@Override
	public EngageMajorRelease getModel() {
		return engageMajorRelease;
	}

	/**
	 * ҵ���ע��
	 */
	private EngageMajorReleaseBizI engageMajorReleaseBizI;

	@Resource(name = "engageMajorReleaseBizI")
	public void setEngageMajorReleaseBizI(
			EngageMajorReleaseBizI engageMajorReleaseBizI) {
		this.engageMajorReleaseBizI = engageMajorReleaseBizI;
	}

}
