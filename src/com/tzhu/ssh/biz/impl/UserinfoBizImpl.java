package com.tzhu.ssh.biz.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tzhu.ssh.appcomm.base.BaseBizImpl;
import com.tzhu.ssh.biz.UserinfoBizI;
import com.tzhu.ssh.dao.UserinfoDaoI;
import com.tzhu.ssh.entity.Userinfo;



@Service("userinfoBizI")
public class UserinfoBizImpl extends BaseBizImpl<Userinfo> implements
		UserinfoBizI {

	private  UserinfoDaoI  userinfoDaoI;
	@Resource(name="userinfoDaoI")
	public void setUserinfoDaoI(UserinfoDaoI userinfoDaoI) {
		this.userinfoDaoI = userinfoDaoI;
	}
	
	
	
	
}
