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
 * 薪酬标准action
 * @author Administrator
 *
 */
@ParentPackage(value = "struts-default")
@Controller
@Namespace("/lin")
public class SalaryStandardsAction extends BaseAction implements ModelDriven<SalaryStandards> {
	
	private static final long serialVersionUID = 1L;

	//创建实体类用于模型驱动获取前台数据（提供get/set方法）
	private SalaryStandards salaryStandards=new SalaryStandards();
	
	//属性封装用于获取前台的upadteid的值（提供get/set方法）
	private Integer upadteid;
	
	//表达式封装用于获取前台分页的值
	private	Page page;
	
	//用set方法注入salaryStandardsBizI
	private SalaryStandardsBizI salaryStandardsBizI;
	//引用
	@Resource(name = "salaryStandardsBizI")
	public void setSalaryStandardsBizI(SalaryStandardsBizI salaryStandardsBizI) {
		this.salaryStandardsBizI = salaryStandardsBizI;
	}

	/**
	 * 添加薪酬标准方法
	 * @return
	 */
	@Action(value = "salary",results = {@Result (name = "addsalary", type = "redirectAction", location = "searchSalary.action?page.pageNo=1") })
	public String saveSalary(){
		//System.out.println(salaryStandards.toString());
		//计算岗位标准工资
		Double sum=(double) (salaryStandards.getBasicSalary()+salaryStandards.getStationSalary()+salaryStandards.getEducationSalary()-salaryStandards.getEnsureSalary()+salaryStandards.getTrafficSalary()+salaryStandards.getHouseSalary());
		
		//状态（0：申请中 1：重新申请 2：审核通过 3：）
		salaryStandards.setChangeStatus(0);
		//删除状态（0:存在1：删除）
		salaryStandards.setCheckStatus(0);
		//把岗位标准工资放到对象中
		salaryStandards.setSalarySum(sum);
		//把前台的upadteid放入
		salaryStandards.setSsdId(upadteid);
		//如果SsdId有值执行更新否者执行插入
		salaryStandardsBizI.saveOrUpdate(salaryStandards);
		
		return "addsalary";
	}
	
	/**
	 * 薪酬标准查询
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
		
		//统计SalaryStandards的总数据
		Long countSalary=salaryStandardsBizI.count(countHql.toString(),countParm);
		//把数据放到page中
		
		page.setTotalCount(Integer.valueOf(countSalary.toString()));
	
		//查询数据存在的hql语句
		StringBuffer hql= new StringBuffer(" from SalaryStandards where checkStatus = '0' ");	
		
		Object[] pram =new Object[]{};

		if(salaryStandards.getChangeStatus() != null && !"".equals(salaryStandards.getChangeStatus())){
			//添加hql语句到hql
			hql.append(" and changeStatus = ? ");
			//向pram设置参数
			pram=new Object[]{salaryStandards.getChangeStatus()};
			
		}
		hql.append(" order by ssdId DESC ");
		//执行查询语句
		//List<SalaryStandards> listSalaryStandard = salaryStandardsBizI.find(hql, new String[]{}, 1, 5);
		List<SalaryStandards> listSalaryStandard = salaryStandardsBizI.find(hql.toString(), pram, page.getPageNo(), page.getPageSize());
		
		//把listSalaryStandard放到会话中
		requestMap.put("listSalaryStandard", listSalaryStandard);
		//page放到会话中
		requestMap.put("page", page);
		
		Integer salary=salaryStandards.getChangeStatus();
		requestMap.put("salary", salary);
		return "search_Salary";
	}
	/**
	 * 薪酬标准修改
	 * @return
	 */
	@Action( value="updateSalary",results = {@Result( name = "update_Salary" ,location = "/admin/salary/salary_standard_update.jsp")})
	public String update(){
		
		//根据upadteid查出该对象
		SalaryStandards s1=salaryStandardsBizI.get(SalaryStandards.class, upadteid);
		
		//放到会话中
		requestMap.put("s1", s1);
		
		return "update_Salary";
	}
	/**
	 * 薪酬标准删除
	 * @return
	 */
	@Action( value="delSalary",results = {@Result( name = "del_Salary" ,type = "redirectAction", location = "searchSalary.action?page.pageNo=1")})
	public String delSalary(){
		//根据upadteid查出该对象
		SalaryStandards delSalary=salaryStandardsBizI.get(SalaryStandards.class, upadteid);
		
		//删除状态（0:存在1：删除）
		delSalary.setCheckStatus(1);		
		delSalary.setSsdId(upadteid);
		//执行删除
		salaryStandardsBizI.update(delSalary);
		
		return "del_Salary";
	}
	/**
	 * 薪酬标准通过时点击查看的方法
	 * @return
	 */
	@Action(value = "kan" ,results = {@Result(name = "kan_Salary", location = "/admin/salary/salary_standard_k.jsp")})
	public String kan(){
		SalaryStandards kanObj=salaryStandardsBizI.get(SalaryStandards.class, upadteid);
		//放到会话中
		requestMap.put("kanObj", kanObj);
		return "kan_Salary";
		
		
	}
	
	/***
	 * 薪酬标准审核查询
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
		//把数据放到page中
		
		page.setTotalCount(Integer.valueOf(countSalary.toString()));
		Object[] pram =  new Object[]{};
		//动态字符串
		StringBuffer hql=new StringBuffer();
		//添加查询语句数据存在（checkStatus = '0'）并且状态不为1的数据 状态（0：申请中 /1：重新申请 /2：审核通过 ）
		hql.append(" from SalaryStandards where  checkStatus = '0' and not changeStatus = '1'");
		if(salaryStandards.getChangeStatus() != null && !"".equals(salaryStandards.getChangeStatus())){
			//拼接hql语句
			hql.append(" and changeStatus = ? ");
			//向pram设置参数
			pram=new Object[]{salaryStandards.getChangeStatus()};
			
		}
		hql.append("  order by ssdId desc ");
		//查询数据存在并在审核中的的hql语句
		//String hql = " from SalaryStandards where  checkStatus = '0' and not changeStatus = '1'";
		//执行查询语句
		List<SalaryStandards> listSearchChecker = salaryStandardsBizI.find(hql.toString(), pram,page.getPageNo(),page.getPageSize());
		
		//System.out.println(" +++++++++:"+listSearchChecker.size());	
		
		requestMap.put("listSearchChecker", listSearchChecker);
		requestMap.put("page", page);
		Integer checker=salaryStandards.getChangeStatus();
		requestMap.put("checker", checker);
		return "search_Checker";
				
	}
	/**
	 * 薪酬标准审核点击审核发到审核页面
	 * @return
	 */
	@Action(value = "checker",results = {@Result(name = "checker_Salary",location = "/admin/salary/salary_checker.jsp") })
	public String checker(){
		//根据upadteid查出该对象
		SalaryStandards checkerList=salaryStandardsBizI.get(SalaryStandards.class, upadteid);				
		
		//放到会话中				
		requestMap.put("checkerList", checkerList);				
		return "checker_Salary";
	}
	/**
	 * 薪酬标准审核方法
	 * @return
	 */
	@Action(value = "audit",results = {@Result(name = "audit_Check",type = "redirectAction",location = "searchChecker.action?page.pageNo=1") })
	public String audit(){

		//根据upadteid查出对象
		SalaryStandards auditingObj=salaryStandardsBizI.get(SalaryStandards.class, upadteid);
		
		//upadteid放到auditingObj
		auditingObj.setSsdId(upadteid);
		//复核人放到auditingObj
		auditingObj.setChecker(salaryStandards.getChecker());
		//审核时间放到auditingObj
		auditingObj.setCheckTime(salaryStandards.getCheckTime());
		//审核状态放到auditingObj
		auditingObj.setChangeStatus(salaryStandards.getChangeStatus());
		//审核备注放到auditingObj
		auditingObj.setCheckComment(salaryStandards.getCheckComment());
		
		//执行修改
		salaryStandardsBizI.update(auditingObj);
		
		return "audit_Check";
	}
	/**
	 * 薪酬标准审核当审核通过点击查看的方法
	 * @return
	 */
	@Action(value = "check",results = {@Result(name = "check_obj",location = "/admin/salary/salary_checker_k.jsp")})
	public String check(){
		// 根据upadteid查出信息
		SalaryStandards checkObj=salaryStandardsBizI.get(SalaryStandards.class, upadteid);
		//放到会话中
		requestMap.put("checkObj", checkObj);
		return "check_obj";
	}
	
	
	//模型驱动的getgetModel
	@Override
	public SalaryStandards getModel() {
		// TODO Auto-generated method stub
		return salaryStandards;
	}
	
	//属性封装upadteid的get/set
	public Integer getUpadteid() {
		return upadteid;
	}

	public void setUpadteid(Integer upadteid) {
		this.upadteid = upadteid;
	}
	//表达式封装用于获取前台分页的值的get/set
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	

}
