package com.tzhu.ssh.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Controller;

import com.tzhu.ssh.appcomm.base.BaseAction;
import com.tzhu.ssh.biz.HumanFileBizI;
import com.tzhu.ssh.entity.HumanFile;

@ParentPackage(value = "struts-default")
@Controller
@Namespace("/hd")
public class HumanDeletedAction extends BaseAction
{
	private HumanFileBizI humanFileBizI;
	
	@Resource(name = "humanFileBizI")
	public void setHumanFileBizI(HumanFileBizI humanFileBizI) {
		this.humanFileBizI = humanFileBizI;
	}
	
	@Action(value = "humandeleted", results = { @Result(name = "humanfile_deleted", location = "/admin/humanfile/humandeleted.jsp") })
	public String humanupdate() 
	{
		
		return "humanfile_deleted";
	}
}
