package com.tzhu.ssh.test;

import static org.junit.Assert.*;

import org.hibernate.SessionFactory;
import org.junit.Test;

import com.tzhu.ssh.appcomm.SpringUtils;

public class SessionFactoryTest {

	@Test
	public void test() {
		
		SessionFactory  session= SpringUtils.getBean("sessionFactory", SessionFactory.class);
		
		
		System.out.println(session.openSession());
		
		
	}

}
