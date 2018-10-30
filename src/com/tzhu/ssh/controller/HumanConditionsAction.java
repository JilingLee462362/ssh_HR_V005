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
	 * ���ź�ְ��������ҵ�����
	 */
	// ��ÿ�������������
	List<String> firstList;
	// �õ�ְλ��������
	List<String> secondList;
	// ������ò��Ŷ�Ӧְλ�ļ��ϱ���
	List<HumanFile> positionList;
	
	
	/**
	 * ��������ѯҵ��
	 * */
	@Action(value = "condSelect", results = { @Result(name = "humanfile_search", type="json",params={"root","positionList"}) })
	public String condSelect() 
	{
		HttpServletRequest req=ServletActionContext.getRequest();
		String department=req.getParameter("department");
		String tTitle=req.getParameter("tTitle");
		String selectTime=req.getParameter("selectTime");
		
		//�õ���ǰϵͳʱ��
		Date date1 = new Date(System.currentTimeMillis());
		Date date2 = new Date(System.currentTimeMillis());
		
		//���Calendar�����ʱ������޸Ĳ���
		Calendar cal = Calendar.getInstance();
		cal.setTime(date2);

		// �õ��޸�ǰ��ʱ��
		Timestamp beforeTime = new Timestamp(date1.getTime());
		// ��ò���department��ֵ�����ж�
		if (department != null && !"".equals(department)) 
		{
			// ���ְ��ttitle��ֵ�����ж�
			if (tTitle != null && !"".equals(tTitle)) 
			{
				//���ʱ������ж�
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
						//�޸�ʱ��
						cal.add(Calendar.DAY_OF_WEEK, -3);
						date2 = cal.getTime();
						
						// �õ��޸ĺ��ʱ��
						Timestamp laterTime = new Timestamp(date2.getTime());	
						positionList=humanFileBizI.find("from HumanFile where thirdKindName=? and humanMajorKindName=? and checkTime between ? and ? ", new Object[]{department,tTitle,laterTime,beforeTime});
						for (HumanFile hu : positionList) 
						{
							System.out.println(hu);
						}
					}
					else if("yizhou".equals(selectTime))
					{
						//�޸�ʱ��
						cal.add(Calendar.DAY_OF_WEEK, -7);
						date2 = cal.getTime();
						
						// �õ��޸ĺ��ʱ��
						Timestamp laterTime = new Timestamp(date2.getTime());
						positionList=humanFileBizI.find("from HumanFile where thirdKindName=? and humanMajorKindName=? and checkTime between ? and ? ", new Object[]{department,tTitle,laterTime,beforeTime});
						for (HumanFile hu : positionList) 
						{
							System.out.println(hu);
						}
					}
					else if("sanshitian".equals(selectTime))
					{
						//�޸�ʱ��
						cal.add(Calendar.DAY_OF_WEEK, -30);
						date2 = cal.getTime();
						
						//�õ��޸ĺ��ʱ��
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
	
	// �õ��������Ƶļ��϶���
	public List<String> getFirstList() {
		return firstList;
	}

	// �õ�ְλ���Ƶļ��϶���
	public List<String> getSecondList() {
		return secondList;
	}

	// ��ò��ŵĶ��󼯺�
	public List<HumanFile> getPositionList() {
		return positionList;
	}

	// ���ò��Ŷ���ļ���
	public void setPositionList(List<HumanFile> positionList) {
		this.positionList = positionList;
	}
}
