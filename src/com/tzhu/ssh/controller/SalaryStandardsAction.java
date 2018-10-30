package com.tzhu.ssh.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.tzhu.ssh.appcomm.base.BaseAction;
import com.tzhu.ssh.appcomm.util.Page;
import com.tzhu.ssh.biz.SalaryStandardsBizI;
import com.tzhu.ssh.entity.SalaryStandards;

/**
 * н���׼action
 * @author Administrator
 *
 */
@ParentPackage(value = "struts-default")
@Controller
@Namespace("/lin")
public class SalaryStandardsAction extends BaseAction implements ModelDriven<SalaryStandards> {
	
	private static final long serialVersionUID = 1L;

	//����ʵ��������ģ��������ȡǰ̨���ݣ��ṩget/set������
	private SalaryStandards salaryStandards=new SalaryStandards();
	
	//���Է�װ���ڻ�ȡǰ̨��upadteid��ֵ���ṩget/set������
	private Integer upadteid;
	
	//���ʽ��װ���ڻ�ȡǰ̨��ҳ��ֵ
	private	Page page;
	
	//��set����ע��salaryStandardsBizI
	private SalaryStandardsBizI salaryStandardsBizI;
	//����
	@Resource(name = "salaryStandardsBizI")
	public void setSalaryStandardsBizI(SalaryStandardsBizI salaryStandardsBizI) {
		this.salaryStandardsBizI = salaryStandardsBizI;
	}

	/**
	 * ���н���׼����
	 * @return
	 */
	@Action(value = "salary",results = {@Result (name = "addsalary", type = "redirectAction", location = "searchSalary.action?page.pageNo=1") })
	public String saveSalary(){
		//System.out.println(salaryStandards.toString());
		//�����λ��׼����
		Double sum=(double) (salaryStandards.getBasicSalary()+salaryStandards.getStationSalary()+salaryStandards.getEducationSalary()-salaryStandards.getEnsureSalary()+salaryStandards.getTrafficSalary()+salaryStandards.getHouseSalary());
		
		//״̬��0�������� 1���������� 2�����ͨ�� 3����
		salaryStandards.setChangeStatus(0);
		//ɾ��״̬��0:����1��ɾ����
		salaryStandards.setCheckStatus(0);
		//�Ѹ�λ��׼���ʷŵ�������
		salaryStandards.setSalarySum(sum);
		//��ǰ̨��upadteid����
		salaryStandards.setSsdId(upadteid);
		//���SsdId��ִֵ�и��·���ִ�в���
		salaryStandardsBizI.saveOrUpdate(salaryStandards);
		
		return "addsalary";
	}
	
	/**
	 * н���׼��ѯ
	 * @return
	 */
	@Action(value = "searchSalary",results = {@Result (name = "search_Salary",location = "/admin/salary/salary_standard.jsp") })
	public String searchSalary(){
		StringBuffer countHql=new StringBuffer(" select count(*) from SalaryStandards where checkStatus = '0'" );
		
		Object[] countParm=new Object[]{};
		
		if(salaryStandards.getChangeStatus() != null && !"".equals(salaryStandards.getChangeStatus())){
			
			countHql.append(" and changeStatus = ? ");
			
			countParm=new Object[]{salaryStandards.getChangeStatus()};
		}
		
		//ͳ��SalaryStandards��������
		Long countSalary=salaryStandardsBizI.count(countHql.toString(),countParm);
		//�����ݷŵ�page��
		
		page.setTotalCount(Integer.valueOf(countSalary.toString()));
	
		//��ѯ���ݴ��ڵ�hql���
		StringBuffer hql= new StringBuffer(" from SalaryStandards where checkStatus = '0' ");	
		
		Object[] pram =new Object[]{};

		if(salaryStandards.getChangeStatus() != null && !"".equals(salaryStandards.getChangeStatus())){
			//���hql��䵽hql
			hql.append(" and changeStatus = ? ");
			//��pram���ò���
			pram=new Object[]{salaryStandards.getChangeStatus()};
			
		}
		hql.append(" order by ssdId DESC ");
		//ִ�в�ѯ���
		//List<SalaryStandards> listSalaryStandard = salaryStandardsBizI.find(hql, new String[]{}, 1, 5);
		List<SalaryStandards> listSalaryStandard = salaryStandardsBizI.find(hql.toString(), pram, page.getPageNo(), page.getPageSize());
		
		//��listSalaryStandard�ŵ��Ự��
		requestMap.put("listSalaryStandard", listSalaryStandard);
		//page�ŵ��Ự��
		requestMap.put("page", page);
		
		Integer salary=salaryStandards.getChangeStatus();
		requestMap.put("salary", salary);
		return "search_Salary";
	}
	/**
	 * н���׼�޸�
	 * @return
	 */
	@Action( value="updateSalary",results = {@Result( name = "update_Salary" ,location = "/admin/salary/salary_standard_update.jsp")})
	public String update(){
		
		//����upadteid����ö���
		SalaryStandards s1=salaryStandardsBizI.get(SalaryStandards.class, upadteid);
		
		//�ŵ��Ự��
		requestMap.put("s1", s1);
		
		return "update_Salary";
	}
	/**
	 * н���׼ɾ��
	 * @return
	 */
	@Action( value="delSalary",results = {@Result( name = "del_Salary" ,type = "redirectAction", location = "searchSalary.action?page.pageNo=1")})
	public String delSalary(){
		//����upadteid����ö���
		SalaryStandards delSalary=salaryStandardsBizI.get(SalaryStandards.class, upadteid);
		
		//ɾ��״̬��0:����1��ɾ����
		delSalary.setCheckStatus(1);		
		delSalary.setSsdId(upadteid);
		//ִ��ɾ��
		salaryStandardsBizI.update(delSalary);
		
		return "del_Salary";
	}
	/**
	 * н���׼ͨ��ʱ����鿴�ķ���
	 * @return
	 */
	@Action(value = "kan" ,results = {@Result(name = "kan_Salary", location = "/admin/salary/salary_standard_k.jsp")})
	public String kan(){
		SalaryStandards kanObj=salaryStandardsBizI.get(SalaryStandards.class, upadteid);
		//�ŵ��Ự��
		requestMap.put("kanObj", kanObj);
		return "kan_Salary";
		
		
	}
	
	/***
	 * н���׼��˲�ѯ
	 * @return
	 */
	@Action(value = "searchChecker",results = {@Result(name = "search_Checker" ,location ="/admin/salary/salary_checker_search.jsp")})
	public String searchChecker(){
		StringBuffer countchecker=new StringBuffer(" select count(*) from SalaryStandards where  checkStatus = '0' and not changeStatus = '1' ");
		Object[] checkerobj=new Object[]{};
		if(salaryStandards.getChangeStatus() != null && !"".equals(salaryStandards.getChangeStatus())){
			
			countchecker.append(" and changeStatus = ? ");
			
			checkerobj=new Object[]{salaryStandards.getChangeStatus()};
		}
		
		Long countSalary=salaryStandardsBizI.count(countchecker.toString(),checkerobj);
		//�����ݷŵ�page��
		
		page.setTotalCount(Integer.valueOf(countSalary.toString()));
		Object[] pram =  new Object[]{};
		//��̬�ַ���
		StringBuffer hql=new StringBuffer();
		//��Ӳ�ѯ������ݴ��ڣ�checkStatus = '0'������״̬��Ϊ1������ ״̬��0�������� /1���������� /2�����ͨ�� ��
		hql.append(" from SalaryStandards where  checkStatus = '0' and not changeStatus = '1'");
		if(salaryStandards.getChangeStatus() != null && !"".equals(salaryStandards.getChangeStatus())){
			//ƴ��hql���
			hql.append(" and changeStatus = ? ");
			//��pram���ò���
			pram=new Object[]{salaryStandards.getChangeStatus()};
			
		}
		hql.append("  order by ssdId desc ");
		//��ѯ���ݴ��ڲ�������еĵ�hql���
		//String hql = " from SalaryStandards where  checkStatus = '0' and not changeStatus = '1'";
		//ִ�в�ѯ���
		List<SalaryStandards> listSearchChecker = salaryStandardsBizI.find(hql.toString(), pram,page.getPageNo(),page.getPageSize());
		
		//System.out.println(" +++++++++:"+listSearchChecker.size());	
		
		requestMap.put("listSearchChecker", listSearchChecker);
		requestMap.put("page", page);
		Integer checker=salaryStandards.getChangeStatus();
		requestMap.put("checker", checker);
		return "search_Checker";
				
	}
	/**
	 * н���׼��˵����˷������ҳ��
	 * @return
	 */
	@Action(value = "checker",results = {@Result(name = "checker_Salary",location = "/admin/salary/salary_checker.jsp") })
	public String checker(){
		//����upadteid����ö���
		SalaryStandards checkerList=salaryStandardsBizI.get(SalaryStandards.class, upadteid);				
		
		//�ŵ��Ự��				
		requestMap.put("checkerList", checkerList);				
		return "checker_Salary";
	}
	/**
	 * н���׼��˷���
	 * @return
	 */
	@Action(value = "audit",results = {@Result(name = "audit_Check",type = "redirectAction",location = "searchChecker.action?page.pageNo=1") })
	public String audit(){

		//����upadteid�������
		SalaryStandards auditingObj=salaryStandardsBizI.get(SalaryStandards.class, upadteid);
		
		//upadteid�ŵ�auditingObj
		auditingObj.setSsdId(upadteid);
		//�����˷ŵ�auditingObj
		auditingObj.setChecker(salaryStandards.getChecker());
		//���ʱ��ŵ�auditingObj
		auditingObj.setCheckTime(salaryStandards.getCheckTime());
		//���״̬�ŵ�auditingObj
		auditingObj.setChangeStatus(salaryStandards.getChangeStatus());
		//��˱�ע�ŵ�auditingObj
		auditingObj.setCheckComment(salaryStandards.getCheckComment());
		
		//ִ���޸�
		salaryStandardsBizI.update(auditingObj);
		
		return "audit_Check";
	}
	/**
	 * н���׼��˵����ͨ������鿴�ķ���
	 * @return
	 */
	@Action(value = "check",results = {@Result(name = "check_obj",location = "/admin/salary/salary_checker_k.jsp")})
	public String check(){
		// ����upadteid�����Ϣ
		SalaryStandards checkObj=salaryStandardsBizI.get(SalaryStandards.class, upadteid);
		//�ŵ��Ự��
		requestMap.put("checkObj", checkObj);
		return "check_obj";
	}
	
	
	//ģ��������getgetModel
	@Override
	public SalaryStandards getModel() {
		// TODO Auto-generated method stub
		return salaryStandards;
	}
	
	//���Է�װupadteid��get/set
	public Integer getUpadteid() {
		return upadteid;
	}

	public void setUpadteid(Integer upadteid) {
		this.upadteid = upadteid;
	}
	//���ʽ��װ���ڻ�ȡǰ̨��ҳ��ֵ��get/set
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	

}
