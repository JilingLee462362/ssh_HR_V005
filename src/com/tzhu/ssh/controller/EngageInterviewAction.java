package com.tzhu.ssh.controller;

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
import com.tzhu.ssh.biz.EngageInterviewBizI;
import com.tzhu.ssh.entity.EngageInterview;

/**
 * 功能说明：面试Action
 * @author 张思贤
 *2018-7-26
 */
@ParentPackage(value="struts-default")
@Controller
@Namespace("/ei")
public class EngageInterviewAction extends BaseAction implements ModelDriven<EngageInterview> {
	
	private EngageInterview engageInterview = new EngageInterview();

	private EngageInterviewBizI engageInterviewBizI;
	
	private Page page;
	
	
	@Resource(name="engageInterviewBizI")
	public void setEngageInterviewBizI(EngageInterviewBizI engageInterviewBizI) {
		this.engageInterviewBizI = engageInterviewBizI;
	}

    //将面试结果录入数据库
    @Action(value="save",results={@Result(name="success",location="/admin/engage/success.jsp")})
    public String saveEngageInterview() {
		
    	System.out.println(engageInterview.toString());
    	engageInterviewBizI.save(engageInterview);
    	
    	return "success";
    }
    
    //带条件分页查询面试结果
    @Action(value="search",results={@Result(name="engageInterview_search",location="/admin/engage/engage_interview_search.jsp")})
    public String searchEngageInterview() {
    	
    	//计算总条数并计算分页信息
   	    Long count = engageInterviewBizI.count("select count(*) from EngageInterview");
    	page.setTotalCount(Integer.valueOf(count.toString()));
   	    System.out.println(page.toString());
    	
   	   System.out.println(engageInterview.toString());
   	    
   	   StringBuffer hql = new StringBuffer(" from EngageInterview where 1=1 ");   	    
   	   
    	//判断属性不为空时拼接字符
    	if(engageInterview.getHumanMajorKindName()!=null && !"".equals(engageInterview.getHumanMajorKindName())){
    		//parms[0] = engageInterview.getHumanMajorKindName();
    		hql.append(" and humanMajorKindName=" + "'" + engageInterview.getHumanMajorKindName() + "'");
    	}else if(engageInterview.getHumanMajorName()!=null && !"".equals(engageInterview.getHumanMajorName())){
    		//parms[1] = engageInterview.getHumanMajorName();
    		hql.append(" and humanMajorName=" + "'" + engageInterview.getHumanMajorName() + "'");
    	}else if(engageInterview.getCheckStatus()!=null && !"".equals(engageInterview.getCheckStatus())){
    		//parms[2] = String.valueOf(engageInterview.getCheckStatus());
    		hql.append(" and checkStatus=" + "'" + engageInterview.getCheckStatus() + "'");
    	}
    	
    	System.out.println(hql.toString());
    	
    	//查询面试结果
		List<EngageInterview> listEngageInterview = engageInterviewBizI.find(hql.toString(),
    			new String[]{}, page.getPageNo(), page.getPageSize());
    	
    	requestMap.put("listEngageInterview", listEngageInterview);
    	requestMap.put("page", page);
    	
		return "engageInterview_search";
    }
    
    //从查询页跳转到修改页
    @Action(value="toChange",results={@Result(name="toChange",location="/admin/engage/engage_interview_change.jsp")})
    public String toChange() {
    	
    	//获取要修改对象的id
    	Integer einId = engageInterview.getEinId();
    	
    	//根据id进行查询
    	EngageInterview changeEngageInterview = engageInterviewBizI.get(" from EngageInterview where einId = " +"'"+einId+"'", new String[]{});
    	
    	//要修改的对象放入session
    	requestMap.put("changeEngageInterview", changeEngageInterview);
    	
		return "toChange";    	
    }
    
    //修改信息提交
    @Action(value="change",results={@Result(name="changeSuccess",location="/admin/engage/success.jsp")})
    public String change() {
    	//获取主键
    	EngageInterview toChangeEngageInterview =  (EngageInterview) sessionMap.get("changeEngageInterview");
    	Integer ceinId = toChangeEngageInterview.getEinId();
    	engageInterview.setEinId(ceinId);
    	
    	//修改面试信息
    	if(engageInterview!=null){
    		engageInterviewBizI.update(engageInterview);
    	}
    	    	
		return "changeSuccess";    	
    }

	//模型驱动
	@Override
	public EngageInterview getModel() {
		// TODO Auto-generated method stub
		return engageInterview;
	}
	
    public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
}
