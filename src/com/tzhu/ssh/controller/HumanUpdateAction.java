package com.tzhu.ssh.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.tzhu.ssh.appcomm.base.BaseAction;
import com.tzhu.ssh.appcomm.util.Page;
import com.tzhu.ssh.biz.HumanFileBizI;
import com.tzhu.ssh.entity.HumanFile;

@ParentPackage(value = "json-default")
@Controller
@Namespace("/hu")
public class HumanUpdateAction extends BaseAction implements ModelDriven<HumanFile>
{
	private HumanFile humanInfo=new HumanFile();
	
	private Page page;// get/set
	
	private HumanFileBizI humanFileBizI;
	@Resource(name = "humanFileBizI")
	public void setHumanFileBizI(HumanFileBizI humanFileBizI) {
		this.humanFileBizI = humanFileBizI;
	}
	
	/**
	 * 部门和职称联动的业务变量
	 */
	// 获得开发部所有数据
	List<String> firstList;
	// 得到职位所有数据
	List<String> secondList;
	
	
	//创建部门和职位集合
	private List<HumanFile> humanthirdList;
	private List<HumanFile> humanMajorList;
	private List<HumanFile> humList;
	private List<HumanFile> SexList;
	
	@Action(value = "updatehuInfo", results = { @Result(name = "updatehuman", type = "redirectAction", location = "searchpage.action?page.pageNo=1") })
	public String updatehuInfo()
	{
		Integer hufId=humanInfo.getHufId();
		System.out.println(hufId);
		humanFileBizI.saveOrUpdate(humanInfo);
		
		return "updatehuman";
	}
	
	/**
	 * 多条件，分页查询
	 */
	@Action(value = "searchpage", results = { @Result(name = "humanfile_search", location = "/admin/humanfile/humanfile_search.jsp") })
	public String searchpage() {

		// 总条数
		Long count = humanFileBizI.count("select count(*) from HumanFile");

		page.setTotalCount(Integer.valueOf(count.toString()));// 计算当前有多少分页

		// System.out.println(page.toString());

		List<HumanFile> listHumanFile = humanFileBizI.find("from HumanFile",new String[] {}, page.getPageNo(), page.getPageSize());

		requestMap.put("page", page);// 分页对象
		requestMap.put("listHumanFile", listHumanFile);

		/*
		 * 下拉列表显示：部门和职位业务操作
		 */
		List<HumanFile> fristKindList = humanFileBizI.find("from HumanFile group by thirdKindName");
		String thirdKindName=fristKindList.get(0).getThirdKindName();
		List<HumanFile> secondKindList = humanFileBizI.find("from HumanFile where thirdKindName=? group by humanMajorKindName",new Object[]{thirdKindName});

		firstList = new ArrayList<String>();
		secondList = new ArrayList<String>();
		for (HumanFile humanFile : fristKindList)
		{
			firstList.add(humanFile.getThirdKindName());
		}
		for (HumanFile humanFile : secondKindList) 
		{
			secondList.add(humanFile.getHumanMajorKindName());
		}
		return "humanfile_search";

	}
	
	@Action(value = "humanupdate", results = { @Result(name = "humanfile_update", location = "/admin/humanfile/humanupdate.jsp") })
	public String humanupdate() 
	{	
		humanthirdList=humanFileBizI.find("from HumanFile group by thirdKindName");
		
		humanMajorList=humanFileBizI.find("from HumanFile where thirdKindName=? group by humanMajorKindName",new Object[]{humanthirdList.get(0).getThirdKindName()});
		
		for(HumanFile hu:humanMajorList)
		{
			System.out.println(hu.getHumanMajorKindName());
		}
		
		//得到部门名称
		String thirdKindName=humanthirdList.get(0).getThirdKindName();
		//得到职位名称
		String MajorKindName=humanMajorList.get(0).getHumanMajorKindName();
		//得到员工姓名
		String humanKindName=humanMajorList.get(0).getHumanName();
		
		humList=humanFileBizI.find("from HumanFile where thirdKindName=? and humanMajorKindName=? group by humanName",new Object[]{thirdKindName,MajorKindName});
		
		SexList=humanFileBizI.find("from HumanFile where thirdKindName=? and humanMajorKindName=? and humanName=?",new Object[]{thirdKindName,MajorKindName,humanKindName});
		
		return "humanfile_update";
	}
	
	@Action(value = "thirdKindName", results = { @Result(name = "thirdKindName_ajax",type="json",params={"root","humanMajorList"}) })
	public String thirdKindName()
	{
		//得到request对象，得到提交的数据
		HttpServletRequest req= ServletActionContext.getRequest();
		String thirdKindName=req.getParameter("thirdKindName");

		//获得返回结果
		humanMajorList=humanFileBizI.find("from HumanFile where thirdKindName=? group by humanMajorKindName", new Object[]{thirdKindName});	
		
		return "thirdKindName_ajax";
	}
	
	@Action(value = "humanMajorKindName", results = { @Result(name = "humanMajorKindName_ajax",type="json",params={"root","humList"}) })
	public String humanMajorKindName()
	{
		//得到request对象，得到提交的数据
		HttpServletRequest req= ServletActionContext.getRequest();
		String thirdKindName=req.getParameter("thirdKindName");
		String humanMajorKindName=req.getParameter("humanMajorKindName");
		
		//获得返回结果
		humList=humanFileBizI.find("from HumanFile where thirdKindName=? and humanMajorKindName=? group by humanName",new Object[]{thirdKindName,humanMajorKindName});
		
		
		return "humanMajorKindName_ajax";
	}
	
	@Action(value = "humanName", results = { @Result(name = "humanName_ajax",type="json",params={"root","SexList"}) })
	public String humanName()
	{
		//得到request对象，得到提交的数据
		HttpServletRequest req= ServletActionContext.getRequest();
		String humanName=req.getParameter("humanName");
		
		//获得返回结果
		SexList=humanFileBizI.find("from HumanFile where humanName=?",new Object[]{humanName});
		return "humanName_ajax";
	}

	//生成部门、职位、员工姓名、性别的get、set方法
	public List<HumanFile> getHumanthirdList() {
		return humanthirdList;
	}

	public void setHumanthirdList(List<HumanFile> humanthirdList) {
		this.humanthirdList = humanthirdList;
	}

	public List<HumanFile> getHumanMajorList() {
		return humanMajorList;
	}

	public void setHumanMajorList(List<HumanFile> humanMajorList) {
		this.humanMajorList = humanMajorList;
	}

	public List<HumanFile> getHumList() {
		return humList;
	}

	public void setHumList(List<HumanFile> humList) {
		this.humList = humList;
	}

	public List<HumanFile> getSexList() {
		return SexList;
	}

	public void setSexList(List<HumanFile> sexList) {
		SexList = sexList;
	}

	@Override
	public HumanFile getModel() {
		return humanInfo;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<String> getFirstList() {
		return firstList;
	}

	public void setFirstList(List<String> firstList) {
		this.firstList = firstList;
	}

	public List<String> getSecondList() {
		return secondList;
	}

	public void setSecondList(List<String> secondList) {
		this.secondList = secondList;
	}
	
	
}
