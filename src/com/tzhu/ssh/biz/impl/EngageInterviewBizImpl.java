package com.tzhu.ssh.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tzhu.ssh.appcomm.base.BaseBizImpl;
import com.tzhu.ssh.biz.EngageInterviewBizI;
import com.tzhu.ssh.dao.EngageInterviewDaoI;
import com.tzhu.ssh.entity.EngageInterview;

/**
 * ����˵�������Թ���ӿ�ʵ����
 * @author ��˼��
 *2018-7-26
 */
@Service(value="engageInterviewBizI")
public class EngageInterviewBizImpl extends BaseBizImpl<EngageInterview>
		implements EngageInterviewBizI {

	private EngageInterviewDaoI engageInterviewDaoI;

	@Resource(name="engageInterviewDaoI")
	public void setEngageInterviewDaoI(EngageInterviewDaoI engageInterviewDaoI) {
		this.engageInterviewDaoI = engageInterviewDaoI;
	}
		
}
