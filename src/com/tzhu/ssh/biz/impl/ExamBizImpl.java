package com.tzhu.ssh.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tzhu.ssh.appcomm.base.BaseBizImpl;
import com.tzhu.ssh.biz.ExamBizI;
import com.tzhu.ssh.dao.ExamDaoI;
import com.tzhu.ssh.entity.EngageSubjects;

@Service("examBizI")
public class ExamBizImpl extends BaseBizImpl<EngageSubjects> implements
		ExamBizI {

	private ExamDaoI examDaoI;

	@Resource(name = "examDaoI")
	public void setExamDaoI(ExamDaoI examDaoI) {
		this.examDaoI = examDaoI;
	}

}
