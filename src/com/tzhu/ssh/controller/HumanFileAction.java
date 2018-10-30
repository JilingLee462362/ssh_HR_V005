package com.tzhu.ssh.controller;

import java.io.IOException;
import java.sql.SQLData;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ModelDriven;
import com.tzhu.ssh.appcomm.base.BaseAction;
import com.tzhu.ssh.appcomm.util.Page;
import com.tzhu.ssh.biz.HumanFileBizI;
import com.tzhu.ssh.biz.UserinfoBizI;
import com.tzhu.ssh.entity.HumanFile;
import com.tzhu.ssh.entity.Menutree;
import com.tzhu.ssh.entity.Userinfo;

@ParentPackage(value = "json-default")
@Controller
@Namespace("/hf")
public class HumanFileAction extends BaseAction implements ModelDriven<HumanFile> {

	private HumanFileBizI humanFileBizI;

	private Page page;// get/set

	HumanFile hf = new HumanFile();

	/**
	 * 部门和职称联动的业务变量
	 */
	// 获得开发部所有数据
	List<String> firstList;
	// 得到职位所有数据
	List<String> secondList;
	// 创建获得部门对应职位的集合变量
	List<HumanFile> positionList;

	//获得deletedHu的值
	private String deletedHu;

	@Resource(name = "humanFileBizI")
	public void setHumanFileBizI(HumanFileBizI humanFileBizI) {
		this.humanFileBizI = humanFileBizI;
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
		List<HumanFile> fristKindList = humanFileBizI
				.find("from HumanFile group by thirdKindName");
		List<HumanFile> secondKindList = humanFileBizI
				.find("from HumanFile where thirdKindName='UI部' group by humanMajorKindName");

		firstList = new ArrayList<String>();
		secondList = new ArrayList<String>();
		for (HumanFile humanFile : fristKindList) {
			firstList.add(humanFile.getThirdKindName());
		}
		for (HumanFile humanFile : secondKindList) {
			secondList.add(humanFile.getHumanMajorKindName());
		}
		return "humanfile_search";

	}

	/*
	 * ajax实现部门二级联动操作
	 */
	@Action(value = "ajaxHumanList", results = { @Result(name = "ajax", type = "json", params = {"root", "positionList" })})
	public String ajaxHumanList() {
		HttpServletRequest req = ServletActionContext.getRequest();
		HttpServletResponse resp = ServletActionContext.getResponse();
		String departmentText = req.getParameter("departmentText");

		positionList = humanFileBizI
				.find("from HumanFile where thirdKindName='" + departmentText
						+ "' group by humanMajorKindName");
		for (HumanFile hu : positionList) {
			System.out.println(hu);
		}
		return "ajax";

	}
	
	@Action(value = "departmentsearch",results = {@Result(name = "human_add",location = "/admin/humanfile/humanfile_add.jsp")})
	public String departmentSearch(){
		List<HumanFile> listHumanFile =  humanFileBizI.find(" from HumanFile group by thirdKindName ");
		String thirdKindNameSearch = listHumanFile.get(0).getThirdKindName();
		List<HumanFile> listHumanMajorKindName =  humanFileBizI.find(" from HumanFile  where thirdKindName=? group by humanMajorKindName ", new String[]{thirdKindNameSearch});
		
		requestMap.put("departmentsearch", listHumanFile);
		requestMap.put("listHumanMajorKindName", listHumanMajorKindName);
		return "human_add";

	}
	
	/* 删除业务操作
	* */
	@Action(value = "humandeleted", results = { @Result(name = "humandeleted",type="redirectAction", location = "searchpage.action?page.pageNo=1") })
	public String humandeleted() 
	{
		if(deletedHu!=null && "deleted".equals(deletedHu))
		{
			Integer humanId=hf.getHufId();
			//获得hufId
			List<HumanFile> humanInfoList=humanFileBizI.find("from HumanFile where hufId=?", new Object[]{humanId});
			//得到list集合中的HumanFile对象
			HumanFile humanInfo=humanInfoList.get(0);
			//设置对象中的员工状态
			humanInfo.setHumanFileStatus("离职");
			humanFileBizI.update(humanInfo);
		}
		return "humandeleted";
	}
	
	@Action(value = "humanadd",results = {@Result(name = "search_action",type = "redirectAction",location = "searchpage.action?page.pageNo = 1")})
	public String humanAdd(){
		
			humanFileBizI.save(hf);
			return "search_action";
		
	}

	@Override
	public HumanFile getModel() {	
		return hf;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	// 得到部门名称的集合对象
	public List<String> getFirstList() {
		return firstList;
	}

	// 得到职位名称的集合对象
	public List<String> getSecondList() {
		return secondList;
	}

	// 获得部门的对象集合
	public List<HumanFile> getPositionList() {
		return positionList;
	}

	// 设置部门对象的集合
	public void setPositionList(List<HumanFile> positionList) {
		this.positionList = positionList;
	}

	//创建deletedHu的get、set方法
	public String getDeletedHu() {
		return deletedHu;
	}

	public void setDeletedHu(String deletedHu) {
		this.deletedHu = deletedHu;
	}
}