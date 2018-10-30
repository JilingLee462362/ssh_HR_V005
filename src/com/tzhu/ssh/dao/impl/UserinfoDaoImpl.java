package com.tzhu.ssh.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.tzhu.ssh.appcomm.base.BaseDaoImpl;
import com.tzhu.ssh.dao.UserinfoDaoI;
import com.tzhu.ssh.entity.Userinfo;



@Repository(value="userinfoDaoI")
public class UserinfoDaoImpl extends BaseDaoImpl<Userinfo> implements
		 UserinfoDaoI {


}
