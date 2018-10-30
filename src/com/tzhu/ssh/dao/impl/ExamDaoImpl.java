package com.tzhu.ssh.dao.impl;

import org.springframework.stereotype.Repository;

import com.tzhu.ssh.appcomm.base.BaseDaoImpl;
import com.tzhu.ssh.dao.ExamDaoI;
import com.tzhu.ssh.entity.EngageSubjects;
@Repository("examDaoI")
public class ExamDaoImpl extends BaseDaoImpl<EngageSubjects> implements
		ExamDaoI {

}
