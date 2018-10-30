package com.tzhu.ssh.controller;

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
import com.tzhu.ssh.biz.BonusBizI;
import com.tzhu.ssh.biz.HumanFileBizI;
import com.tzhu.ssh.entity.Bonus;
import com.tzhu.ssh.entity.HumanFile;
@ParentPackage(value="struts-default")
@Controller
@Namespace("/bn")
public class BonusAction extends BaseAction implements ModelDriven<Bonus> {

	
	private BonusBizI  bonusBizI;
	
	private Page page;//  get/set
 







	 Bonus  bonus=new Bonus();
	@Action(value = "searchpage", results = { @Result(name = "bonus_search", location = "/admin/bonus.jsp") })
	public String searchPage(){
		// 总条数
				Long count= bonusBizI.count("select count(*) from Bonus");
				 
				System.out.println(Integer.valueOf(count.toString()));
				int totalCount = Integer.valueOf(count.toString());
				page.setTotalCount(totalCount);
//				page.setTotalCount(Integer.valueOf(count.toString()));//计算当前有多少分页
				
			//	System.out.println(page.toString());
				 
				List<Bonus>   listBonus=	bonusBizI.find("from Bonus", new String[]{},page.getPageNo(), page.getPageSize());		
				
				requestMap.put("page",page);//分页对象
				requestMap.put("listBonus", listBonus);
		
		
		return "bonus_search";
	}
	@Action(value = "searchtype", results = { @Result(name = "bonus_search", location = "/admin/bonus.jsp") })
	public String searchType(){
		// 总条数
		 
		HttpServletRequest req=ServletActionContext.getRequest();
		String type=req.getParameter("type");
//		Long count= bonusBizI.count("select count(*) from Bonus");
		System.out.println(type);
		Long count=  bonusBizI.count("select count(*) from Bonus where bonus_item=?", new String[]{type});
//		 
		System.out.println(Integer.valueOf(count.toString()));
		Integer totalCount = Integer.valueOf(count.toString());
		page.setTotalCount(totalCount);
		
//		List<Bonus>   listBonus=	bonusBizI.find("from Bonus where bonusTtem=?", new String[]{},page.getPageNo(), page.getPageSize());
		 String[] param =new String[]{type};
		List<Bonus>   listBonus=bonusBizI.find("from Bonus where bonus_item=?",param,page.getPageNo(),page.getPageSize());
		requestMap.put("page",page);//分页对象
		requestMap.put("listBonus", listBonus);
		return "bonus_search";
	}
	
	
	
	@Resource(name="bonusBizI")
	public void setBonusBizI(BonusBizI bonusBizI) {
		this.bonusBizI = bonusBizI;
	}


	public Page getPage() {
		return page;
	}




	public void setPage(Page page) {
		this.page = page;
	}





	@Override
	public Bonus getModel() {
		// TODO Auto-generated method stub
		return null;
	}

}
