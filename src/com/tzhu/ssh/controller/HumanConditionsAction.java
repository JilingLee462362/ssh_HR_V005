package com.tzhu.ssh.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Controller;

import com.tzhu.ssh.appcomm.base.BaseAction;
import com.tzhu.ssh.biz.HumanFileBizI;
import com.tzhu.ssh.entity.HumanFile;

@ParentPackage(value = "json-default")
@Controller
@Namespace("/hc")
public class HumanConditionsAction extends BaseAction
{
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
	// 创建获得部门对应职位的集合变量
	List<HumanFile> positionList;
	
	
	/**
	 * 多条件查询业务
	 * */
	@Action(value = "condSelect", results = { @Result(name = "humanfile_search", type="json",params={"root","positionList"}) })
	public String condSelect() 
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		String department=req.getParameter("department");
		String tTitle=req.getParameter("tTitle");
		String selectTime=req.getParameter("selectTime");
		
		//得到当前系统时间
		Date date1 = new Date(System.currentTimeMillis());
		Date date2 = new Date(System.currentTimeMillis());
		
		//获得Calendar对象对时间进行修改操作
		Calendar cal = Calendar.getInstance();
		cal.setTime(date2);

		// 得到修改前的时间
		Timestamp beforeTime = new Timestamp(date1.getTime());
		// 获得部门department的值进行判断
		if (department != null && !"".equals(department)) 
		{
			// 获得职称ttitle的值进行判断
			if (tTitle != null && !"".equals(tTitle)) 
			{
				//获得时间进行判断
				if (selectTime != null && !"".equals(selectTime))
				{
					if ("quanbu".equals(selectTime)) 
					{
						positionList=humanFileBizI.find("from HumanFile where thirdKindName=? and humanMajorKindName=?", new Object[]{department,tTitle});
						for (HumanFile hu : positionList)
						{
							System.out.println(hu);
						}
					} 
					else if ("santian".equals(selectTime)) 
					{
						//修改时间
						cal.add(Calendar.DAY_OF_WEEK, -3);
						date2 = cal.getTime();
						
						// 得到修改后的时间
						Timestamp laterTime = new Timestamp(date2.getTime());	
						positionList=humanFileBizI.find("from HumanFile where thirdKindName=? and humanMajorKindName=? and checkTime between ? and ? ", new Object[]{department,tTitle,laterTime,beforeTime});
						for (HumanFile hu : positionList) 
						{
							System.out.println(hu);
						}
					}
					else if("yizhou".equals(selectTime))
					{
						//修改时间
						cal.add(Calendar.DAY_OF_WEEK, -7);
						date2 = cal.getTime();
						
						// 得到修改后的时间
						Timestamp laterTime = new Timestamp(date2.getTime());
						positionList=humanFileBizI.find("from HumanFile where thirdKindName=? and humanMajorKindName=? and checkTime between ? and ? ", new Object[]{department,tTitle,laterTime,beforeTime});
						for (HumanFile hu : positionList) 
						{
							System.out.println(hu);
						}
					}
					else if("sanshitian".equals(selectTime))
					{
						//修改时间
						cal.add(Calendar.DAY_OF_WEEK, -30);
						date2 = cal.getTime();
						
						//得到修改后的时间
						Timestamp laterTime = new Timestamp(date2.getTime());	
						positionList=humanFileBizI.find("from HumanFile where thirdKindName=? and humanMajorKindName=? and checkTime between ? and ? ", new Object[]{department,tTitle,laterTime,beforeTime});
						for (HumanFile hu : positionList) 
						{
							System.out.println(hu);
						}
					}
				}
			}
		}
		return "humanfile_search";
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
}
