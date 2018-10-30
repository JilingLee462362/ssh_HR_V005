package com.tzhu.ssh.controller;

import java.sql.Timestamp;
import java.text.ParseException;
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
import com.tzhu.ssh.biz.EngageSubjectsBizI;
import com.tzhu.ssh.entity.EngageSubjects;
/**
 * 
 * @描述: 题库的操作
 * @作者: 刘锦清
 * @时间: 2018-7-31
 *
 */
@ParentPackage("struts-default")
@Controller
@Namespace("/sub")
public class EngageSubjectsAction extends BaseAction implements
		ModelDriven<EngageSubjects> {
	
	private static final long serialVersionUID = 1L;

	//注解注入题库的业务接口
	private EngageSubjectsBizI engageSubjectsBizI;
	
	//属性封装分页对象工具
	private Page page;
	
	//领域对象封装
	EngageSubjects sub2 = new EngageSubjects();

	@Resource(name = "engageSubjectsBizI")
	public void setEngageSubjectsBizI(EngageSubjectsBizI engageSubjectsBizI) {
		this.engageSubjectsBizI = engageSubjectsBizI;
	}
	
	//多条件带分页查询题库
	@Action(value = "serdtl", results = { @Result(name = "serdtl", location = "/admin/exam/update_question.jsp") })
	public String searchdetail() throws ParseException{
		//获取时间范围
		String needtime = httpRequest.getParameter("beforetime");
		Integer yneedtime = Integer.valueOf(needtime);
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date(System.currentTimeMillis());
		calendar.setTime(date);
		calendar.add(Calendar.DAY_OF_YEAR,-yneedtime);
		Date sdate = calendar.getTime();
		String btime=sdf.format(sdate);
		String ntime=sdf.format(date);
		//获取当前时间和以前的时间
		Timestamp bt = Timestamp.valueOf(btime);
		Timestamp nt = Timestamp.valueOf(ntime);
		//获取题目类型
		String typename=sub2.getFirstKindName();
		//获取修改人姓名
		String personname=sub2.getChanger();
	    
		//把参数返回到前台
		Long count= engageSubjectsBizI.count("select count(subId) from EngageSubjects where firstKindName='"+typename+"' and changer='"+personname+"' and changeTime between '"+bt+"' and '"+nt+"'");
		page.setTotalCount(new Long(count).intValue());//计算当前有多少分页 
		List<EngageSubjects>   subjects = engageSubjectsBizI.find(" from EngageSubjects where firstKindName=? and changer=? and changeTime between ? and ?", new Object[]{typename,personname,bt,nt}, page.getPageNo(), page.getPageSize());
		requestMap.put("typename", typename);
		requestMap.put("personname", personname);
		requestMap.put("needtime", needtime);
		requestMap.put("page",page);//分页对象
		requestMap.put("subjects", subjects);
		return "serdtl";
		
	}
	
	//修改题目
	@Action(value = "revque", results = { @Result(name = "revque", location = "/admin/exam/question_revise.jsp") })
	public String revisequestion(){
		
		//通过题目id获取到该题目对象返回到页面上
		EngageSubjects engsub=engageSubjectsBizI.get(" from EngageSubjects where subId = ?", new Integer[]{sub2.getSubId()});
		requestMap.put("engsub", engsub);
		
		return "revque";
	}
	
	//删除
	@Action(value = "redque", results = { @Result(name = "redque", location = "/admin/exam/update_question.jsp") })
	public String reducequestion(){
		
		//根据题目id删除一道题
		EngageSubjects engsub2=engageSubjectsBizI.get(" from EngageSubjects where subId = ?", new Integer[]{sub2.getSubId()});
		engageSubjectsBizI.delete(engsub2);
		
		//把删过题目后的题库分页返回到页面上
		Long count= engageSubjectsBizI.count("select count(subId) from EngageSubjects");
		page.setTotalCount(new Long(count).intValue());//计算当前有多少分页
		List<EngageSubjects>   subjects=	engageSubjectsBizI.find("from EngageSubjects", new String[]{},page.getPageNo(), page.getPageSize());		
		requestMap.put("page",page);//分页对象
		requestMap.put("subjects", subjects);
		
		return "redque";
		
	}
	
	//题库分页查询
	@Action(value = "question", results = { @Result(name = "question", location = "/admin/exam/update_question.jsp") })
	public String selectpage(){
		
		//把题库分页返回到页面上
		Long count= engageSubjectsBizI.count("select count(subId) from EngageSubjects");
		page.setTotalCount(new Long(count).intValue());//计算当前有多少分页 
		List<EngageSubjects>   subjects=	engageSubjectsBizI.find("from EngageSubjects", new String[]{},page.getPageNo(), page.getPageSize());		
		requestMap.put("page",page);//分页对象
		requestMap.put("subjects", subjects);
		
		return "question";
		
	}
	
	//更新题目
	@Action(value = "questionupdate", results = { @Result(name = "questionupdate", location = "/admin/exam/update_question.jsp") })
    public String addquestion(){
		
		//增加或修改一道题
		engageSubjectsBizI.saveOrUpdate(sub2);
		
		//把更新后的题库分页返回到页面上
		Long count= engageSubjectsBizI.count("select count(subId) from EngageSubjects");
		page.setTotalCount(new Long(count).intValue());//计算当前有多少分页
		List<EngageSubjects>   subjects=	engageSubjectsBizI.find("from EngageSubjects", new String[]{},page.getPageNo(), page.getPageSize());		
		requestMap.put("page",page);//分页对象
		requestMap.put("subjects", subjects);
	
		return "questionupdate";
    	
    }
	@Override
	public EngageSubjects getModel() {
		// TODO Auto-generated method stub
		return sub2;
	}
	
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

}
