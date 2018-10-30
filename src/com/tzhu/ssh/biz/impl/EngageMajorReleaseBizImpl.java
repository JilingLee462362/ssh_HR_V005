package com.tzhu.ssh.biz.impl;

import java.io.Serializable;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tzhu.ssh.appcomm.base.BaseBizImpl;
import com.tzhu.ssh.biz.EngageMajorReleaseBizI;
import com.tzhu.ssh.dao.EngageMajorReleaseDaoI;
import com.tzhu.ssh.dao.HumanFileDaoI;
import com.tzhu.ssh.entity.EngageMajorRelease;

@Service("engageMajorReleaseBizI")
public class EngageMajorReleaseBizImpl  extends BaseBizImpl<EngageMajorRelease> implements EngageMajorReleaseBizI {

	private  EngageMajorReleaseDaoI  engageMajorReleaseDaoI;

	@Resource(name="engageMajorReleaseDaoI")
	public void setEngageMajorReleaseDaoI(
			EngageMajorReleaseDaoI engageMajorReleaseDaoI) {
		this.engageMajorReleaseDaoI = engageMajorReleaseDaoI;
	}
	
	
	
	
}
