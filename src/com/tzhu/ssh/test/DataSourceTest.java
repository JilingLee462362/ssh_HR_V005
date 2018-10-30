package com.tzhu.ssh.test;

import static org.junit.Assert.*;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.sql.DataSource;

import org.junit.Test;

import com.tzhu.ssh.appcomm.SpringUtils;

public class DataSourceTest {

	@Test
	public void test() {

		DataSource ds = SpringUtils.getBean("dataSource", DataSource.class);
		
		System.out.println(ds);

	}
	
	@Test
	public void test1()
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
        Date date1 = new Date(System.currentTimeMillis());
        Date date2 = new Date(System.currentTimeMillis());
        calendar.setTime(date2);

        calendar.add(Calendar.DAY_OF_WEEK,-30);
        date2 = calendar.getTime();
        //Timestamp tt = new Timestamp(date1.getTime());
        //System.out.println(date1);
        //System.out.println("修改后的时间"+tt);
        String beforeTime= dateFormat.format(date1);
        String laterTime=dateFormat.format(date2);
        System.out.println("修改前的时间："+beforeTime);
		System.out.println("修改后的时间："+laterTime);
	}

}
