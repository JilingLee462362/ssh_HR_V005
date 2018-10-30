package com.tzhu.ssh.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.tzhu.ssh.appcomm.base.BaseDaoImpl;
import com.tzhu.ssh.dao.EngageResumeDaoI;
import com.tzhu.ssh.entity.EngageResume;

@Repository(value="engageResumeDaoI")
public class EngageResumeDaoImpl extends BaseDaoImpl<EngageResume> implements
		EngageResumeDaoI {

}
