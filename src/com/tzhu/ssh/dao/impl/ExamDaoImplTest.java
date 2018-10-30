package com.tzhu.ssh.dao.impl;

import com.tzhu.ssh.appcomm.SpringUtils;
import com.tzhu.ssh.dao.ExamDaoI;
import com.tzhu.ssh.entity.EngageExam;
import com.tzhu.ssh.entity.EngageSubjects;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

public class ExamDaoImplTest {

    @Test
    public void find() {
        ApplicationContext app=new ClassPathXmlApplicationContext("applicationContext.xml");
        ExamDaoI examDaoI=(ExamDaoI)app.getBean("examDaoI",ExamDaoI.class);
        //ExamDaoI examDaoI= SpringUtils.getBean("examDaoI",ExamDaoI.class);
        List<Object> obj = new ArrayList<>();
        List<EngageSubjects> list = examDaoI.find("from EngageExam", obj, 1, 5);
        for (EngageSubjects d:list
             ) {
            System.out.println(d.getSubId());
        }

    }
}