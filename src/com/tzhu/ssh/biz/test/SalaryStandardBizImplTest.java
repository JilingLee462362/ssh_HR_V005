package com.tzhu.ssh.biz.test;

import java.io.Serializable;
import java.util.List;

import org.junit.Test;

import com.tzhu.ssh.appcomm.SpringUtils;
import com.tzhu.ssh.biz.SalaryStandardsBizI;
import com.tzhu.ssh.entity.SalaryStandards;

public class SalaryStandardBizImplTest {
	@Test
	public void test() {
		SalaryStandardsBizI salary=	SpringUtils.getBean("salaryStandardsBizI", SalaryStandardsBizI.class);
		SalaryStandards salaryStandard=new SalaryStandards();
		salaryStandard.setStandardId("1002");
		salaryStandard.setStandardName("php");
		salaryStandard.setRegister("lin");
		salaryStandard.setRemark("ds1212121");
		Serializable	ui=	salary.save(salaryStandard);
		System.out.println(ui);
		
		
	}
	@Test
	public void test01() {
		SalaryStandardsBizI salary=	SpringUtils.getBean("salaryStandardsBizI", SalaryStandardsBizI.class);
		List<SalaryStandards> lists=	salary.find(" from SalaryStandards ", new Object[]{});
		System.out.println(lists.size());
		
	}
}
