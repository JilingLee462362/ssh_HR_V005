package com.tzhu.ssh.appcomm;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
/**
 * 这是一个获得bean对象的工具类
 * @author  TZHU
 *
 * @param  
 */
public class SpringUtils {

	private static final String[] SPRING_XML = { "applicationContext.xml"};

	public static  <T>  T  getBean(String beanId,Class<T> t) {

		ApplicationContext  app=new  ClassPathXmlApplicationContext(SPRING_XML);

	
		
		return (T) app.getBean(beanId,t);

	};

}
