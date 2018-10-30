package com.tzhu.ssh.biz.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tzhu.ssh.appcomm.base.BaseBizImpl;
import com.tzhu.ssh.biz.HumanFileBizI;
import com.tzhu.ssh.dao.HumanFileDaoI;
import com.tzhu.ssh.entity.HumanFile;


@Service("humanFileBizI")
public class HumanFileBizImpl extends BaseBizImpl<HumanFile> implements HumanFileBizI {

	
	private  HumanFileDaoI  humanFileDaoI;
	
	@Resource(name="humanFileDaoI")
	public void setHumanFileDaoI(HumanFileDaoI humanFileDaoI) {
		this.humanFileDaoI = humanFileDaoI;
	}

	
}
