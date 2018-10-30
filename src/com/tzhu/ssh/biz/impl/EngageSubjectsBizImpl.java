package com.tzhu.ssh.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tzhu.ssh.appcomm.base.BaseBizImpl;
import com.tzhu.ssh.biz.EngageSubjectsBizI;
import com.tzhu.ssh.dao.EngageSubjectsDaoI;
import com.tzhu.ssh.entity.EngageSubjects;

@Service("engageSubjectsBizI")
public class EngageSubjectsBizImpl extends BaseBizImpl<EngageSubjects>
		implements EngageSubjectsBizI {
	private EngageSubjectsDaoI engageSubjectsDaoI;

	@Resource(name = "engageSubjectsDaoI")
	public void setEngageSubjectsDaoI(EngageSubjectsDaoI engageSubjectsDaoI) {
		this.engageSubjectsDaoI = engageSubjectsDaoI;
	}

}
