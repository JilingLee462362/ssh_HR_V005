package com.tzhu.ssh.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.tzhu.ssh.appcomm.base.BaseAction;
import com.tzhu.ssh.biz.ExamBizI;
import com.tzhu.ssh.entity.EngageSubjects;
/**
 * 
 * @描述: 考试的操作
 * @作者: 刘锦清
 * @时间: 2018-7-31
 *
 */
@ParentPackage("struts-default")
@Controller
@Namespace("/ex")
public class ExamAction extends BaseAction implements
		ModelDriven<EngageSubjects> {
	
	private static final long serialVersionUID = 1L;
	private ExamBizI examBizI;
	EngageSubjects sub = new EngageSubjects();
	
	@Resource(name="examBizI")
	public void setExamBizI(ExamBizI examBizI) {
		this.examBizI = examBizI;
	}
	
	//题目生成
	@Action(value = "exampro", results = { @Result(name = "exampro", location = "/admin/exam/exam.jsp") })
	public String searchquestion(){
		
	String type = httpRequest.getParameter("examoption");
	requestMap.put("type", type);
	Map<String,String> mapcorrectkey = new TreeMap<String, String>();
	List<EngageSubjects> listquestion = examBizI.find(" from EngageSubjects where firstKindName=? ", new String[]{type}, 1, 10);
		for (EngageSubjects sub : listquestion) {
			mapcorrectkey.put(sub.getSubId().toString(), sub.getCorrectKey());
		}
		sessionMap.put("mapcorrectkey", mapcorrectkey);
		requestMap.put("listquestion", listquestion);
		
		return "exampro";
		
	}
	
	//计算考试分数
	@Action(value = "score", results = { @Result(name = "score", location = "/admin/exam/grade.jsp") })
	public String testexam(){
		Integer count=0;
		@SuppressWarnings("unchecked")
		Map<String,String> mapkey = (Map<String, String>) sessionMap.get("mapcorrectkey");
		Set<String> keys = mapkey.keySet();
		for (String s : keys) {
			if (mapkey.get(s).equals(httpRequest.getParameter(s))) {
				count=count+10;
			}
		}
		requestMap.put("count", count.toString());
		return "score";
		
	}

	@Override
	public EngageSubjects getModel() {
		// TODO Auto-generated method stub
		return sub;
	}

}
