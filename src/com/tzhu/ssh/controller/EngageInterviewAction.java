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
 * ����˵��������Action
 * @author ��˼��
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

    //�����Խ��¼�����ݿ�
    @Action(value="save",results={@Result(name="success",location="/admin/engage/success.jsp")})
    public String saveEngageInterview() {
		
    	System.out.println(engageInterview.toString());
    	engageInterviewBizI.save(engageInterview);
    	
    	return "success";
    }
    
    //��������ҳ��ѯ���Խ��
    @Action(value="search",results={@Result(name="engageInterview_search",location="/admin/engage/engage_interview_search.jsp")})
    public String searchEngageInterview() {
    	
    	//�����������������ҳ��Ϣ
   	    Long count = engageInterviewBizI.count("select count(*) from EngageInterview");
    	page.setTotalCount(Integer.valueOf(count.toString()));
   	    System.out.println(page.toString());
    	
   	   System.out.println(engageInterview.toString());
   	    
   	   StringBuffer hql = new StringBuffer(" from EngageInterview where 1=1 ");   	    
   	   
    	//�ж����Բ�Ϊ��ʱƴ���ַ�
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
    	
    	//��ѯ���Խ��
		List<EngageInterview> listEngageInterview = engageInterviewBizI.find(hql.toString(),
    			new String[]{}, page.getPageNo(), page.getPageSize());
    	
    	requestMap.put("listEngageInterview", listEngageInterview);
    	requestMap.put("page", page);
    	
		return "engageInterview_search";
    }
    
    //�Ӳ�ѯҳ��ת���޸�ҳ
    @Action(value="toChange",results={@Result(name="toChange",location="/admin/engage/engage_interview_change.jsp")})
    public String toChange() {
    	
    	//��ȡҪ�޸Ķ����id
    	Integer einId = engageInterview.getEinId();
    	
    	//����id���в�ѯ
    	EngageInterview changeEngageInterview = engageInterviewBizI.get(" from EngageInterview where einId = " +"'"+einId+"'", new String[]{});
    	
    	//Ҫ�޸ĵĶ������session
    	requestMap.put("changeEngageInterview", changeEngageInterview);
    	
		return "toChange";    	
    }
    
    //�޸���Ϣ�ύ
    @Action(value="change",results={@Result(name="changeSuccess",location="/admin/engage/success.jsp")})
    public String change() {
    	//��ȡ����
    	EngageInterview toChangeEngageInterview =  (EngageInterview) sessionMap.get("changeEngageInterview");
    	Integer ceinId = toChangeEngageInterview.getEinId();
    	engageInterview.setEinId(ceinId);
    	
    	//�޸�������Ϣ
    	if(engageInterview!=null){
    		engageInterviewBizI.update(engageInterview);
    	}
    	    	
		return "changeSuccess";    	
    }

	//ģ������
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
