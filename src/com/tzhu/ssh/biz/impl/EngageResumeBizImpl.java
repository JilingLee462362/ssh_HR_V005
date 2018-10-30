package com.tzhu.ssh.biz.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tzhu.ssh.appcomm.base.BaseBizImpl;
import com.tzhu.ssh.biz.EngageResumeBizI;
import com.tzhu.ssh.dao.EngageResumeDaoI;
import com.tzhu.ssh.entity.EngageResume;

@Service("engageResumeBizI")
public class EngageResumeBizImpl extends BaseBizImpl<EngageResume> implements
		EngageResumeBizI {
	
	private EngageResumeDaoI engageResumeDaoI;
	@Resource(name="engageResumeDaoI")
	public void setEngageResumeDaoI(EngageResumeDaoI engageResumeDaoI) {
		this.engageResumeDaoI = engageResumeDaoI;
	}
	
}
