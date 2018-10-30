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
 * @����: ���Ĳ���
 * @����: ������
 * @ʱ��: 2018-7-31
 *
 */
@ParentPackage("struts-default")
@Controller
@Namespace("/sub")
public class EngageSubjectsAction extends BaseAction implements
		ModelDriven<EngageSubjects> {
	
	private static final long serialVersionUID = 1L;

	//ע��ע������ҵ��ӿ�
	private EngageSubjectsBizI engageSubjectsBizI;
	
	//���Է�װ��ҳ���󹤾�
	private Page page;
	
	//��������װ
	EngageSubjects sub2 = new EngageSubjects();

	@Resource(name = "engageSubjectsBizI")
	public void setEngageSubjectsBizI(EngageSubjectsBizI engageSubjectsBizI) {
		this.engageSubjectsBizI = engageSubjectsBizI;
	}
	
	//����������ҳ��ѯ���
	@Action(value = "serdtl", results = { @Result(name = "serdtl", location = "/admin/exam/update_question.jsp") })
	public String searchdetail() throws ParseException{
		//��ȡʱ�䷶Χ
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
		//��ȡ��ǰʱ�����ǰ��ʱ��
		Timestamp bt = Timestamp.valueOf(btime);
		Timestamp nt = Timestamp.valueOf(ntime);
		//��ȡ��Ŀ����
		String typename=sub2.getFirstKindName();
		//��ȡ�޸�������
		String personname=sub2.getChanger();
	    
		//�Ѳ������ص�ǰ̨
		Long count= engageSubjectsBizI.count("select count(subId) from EngageSubjects where firstKindName='"+typename+"' and changer='"+personname+"' and changeTime between '"+bt+"' and '"+nt+"'");
		page.setTotalCount(new Long(count).intValue());//���㵱ǰ�ж��ٷ�ҳ 
		List<EngageSubjects>   subjects = engageSubjectsBizI.find(" from EngageSubjects where firstKindName=? and changer=? and changeTime between ? and ?", new Object[]{typename,personname,bt,nt}, page.getPageNo(), page.getPageSize());
		requestMap.put("typename", typename);
		requestMap.put("personname", personname);
		requestMap.put("needtime", needtime);
		requestMap.put("page",page);//��ҳ����
		requestMap.put("subjects", subjects);
		return "serdtl";
		
	}
	
	//�޸���Ŀ
	@Action(value = "revque", results = { @Result(name = "revque", location = "/admin/exam/question_revise.jsp") })
	public String revisequestion(){
		
		//ͨ����Ŀid��ȡ������Ŀ���󷵻ص�ҳ����
		EngageSubjects engsub=engageSubjectsBizI.get(" from EngageSubjects where subId = ?", new Integer[]{sub2.getSubId()});
		requestMap.put("engsub", engsub);
		
		return "revque";
	}
	
	//ɾ��
	@Action(value = "redque", results = { @Result(name = "redque", location = "/admin/exam/update_question.jsp") })
	public String reducequestion(){
		
		//������Ŀidɾ��һ����
		EngageSubjects engsub2=engageSubjectsBizI.get(" from EngageSubjects where subId = ?", new Integer[]{sub2.getSubId()});
		engageSubjectsBizI.delete(engsub2);
		
		//��ɾ����Ŀ�������ҳ���ص�ҳ����
		Long count= engageSubjectsBizI.count("select count(subId) from EngageSubjects");
		page.setTotalCount(new Long(count).intValue());//���㵱ǰ�ж��ٷ�ҳ
		List<EngageSubjects>   subjects=	engageSubjectsBizI.find("from EngageSubjects", new String[]{},page.getPageNo(), page.getPageSize());		
		requestMap.put("page",page);//��ҳ����
		requestMap.put("subjects", subjects);
		
		return "redque";
		
	}
	
	//����ҳ��ѯ
	@Action(value = "question", results = { @Result(name = "question", location = "/admin/exam/update_question.jsp") })
	public String selectpage(){
		
		//������ҳ���ص�ҳ����
		Long count= engageSubjectsBizI.count("select count(subId) from EngageSubjects");
		page.setTotalCount(new Long(count).intValue());//���㵱ǰ�ж��ٷ�ҳ 
		List<EngageSubjects>   subjects=	engageSubjectsBizI.find("from EngageSubjects", new String[]{},page.getPageNo(), page.getPageSize());		
		requestMap.put("page",page);//��ҳ����
		requestMap.put("subjects", subjects);
		
		return "question";
		
	}
	
	//������Ŀ
	@Action(value = "questionupdate", results = { @Result(name = "questionupdate", location = "/admin/exam/update_question.jsp") })
    public String addquestion(){
		
		//���ӻ��޸�һ����
		engageSubjectsBizI.saveOrUpdate(sub2);
		
		//�Ѹ��º������ҳ���ص�ҳ����
		Long count= engageSubjectsBizI.count("select count(subId) from EngageSubjects");
		page.setTotalCount(new Long(count).intValue());//���㵱ǰ�ж��ٷ�ҳ
		List<EngageSubjects>   subjects=	engageSubjectsBizI.find("from EngageSubjects", new String[]{},page.getPageNo(), page.getPageSize());		
		requestMap.put("page",page);//��ҳ����
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
