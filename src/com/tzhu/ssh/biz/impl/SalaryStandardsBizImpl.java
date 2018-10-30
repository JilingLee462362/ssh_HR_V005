package com.tzhu.ssh.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tzhu.ssh.appcomm.base.BaseBizImpl;
import com.tzhu.ssh.biz.SalaryStandardsBizI;
import com.tzhu.ssh.dao.SalaryStandardsDaoI;
import com.tzhu.ssh.entity.SalaryStandards;

@Service(value="salaryStandardsBizI")
public class SalaryStandardsBizImpl extends BaseBizImpl<SalaryStandards> implements
		SalaryStandardsBizI {
	
	private SalaryStandardsDaoI salaryStandardsDaoI;
	@Resource(name = "salaryStandardsDaoI")
	public void setSalaryStandardsDaoI(SalaryStandardsDaoI salaryStandardsDaoI) {
		this.salaryStandardsDaoI = salaryStandardsDaoI;
	}
	

	
	
	
	
	

}
