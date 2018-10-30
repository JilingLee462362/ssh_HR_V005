package com.tzhu.ssh.test;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.junit.Test;

public class DateTest {

	@Test
	public void test() {
		  	Calendar calendar = Calendar.getInstance();
		  	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        Date date = new Date(System.currentTimeMillis());
	        calendar.setTime(date);
	        //calendar.add(Calendar.WEEK_OF_YEAR, -1);
	       // calendar.add(Calendar.YEAR, -1);
	        calendar.add(Calendar.DAY_OF_WEEK,-36);
	        date = calendar.getTime();
	        Timestamp tt = new Timestamp(date.getTime());
	        System.out.println(tt);
	        System.out.println(date);
	        System.out.println(sdf.format(date));
//		Date d = new Date();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		
//		System.out.println(sdf.format(d));
	}

}
