package com.tzhu.ssh.biz.test;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import org.junit.Test;

import com.alibaba.fastjson.JSON;
import com.tzhu.ssh.appcomm.SpringUtils;
import com.tzhu.ssh.biz.UserinfoBizI;
import com.tzhu.ssh.biz.impl.UserinfoBizImpl;
import com.tzhu.ssh.entity.Menutree;
import com.tzhu.ssh.entity.Userinfo;

public class UserinfoBizImplTest {

	@Test
	public void test() {

		UserinfoBizI userinfoBizI = SpringUtils.getBean("userinfoBizI",
				UserinfoBizI.class);

		// List<Userinfo> listU= userinfoBizI.find("from  Userinfo");
		// System.out.println(listU.size());

		Userinfo loginUI = userinfoBizI.get(
				"from Userinfo where userName=? and userPassword=?",
				new String[] { "admin", "77778888" });

		List<Menutree> tree = loginUI.getRole().getMenutrees();

		 
		// 分类 ， 类下列表
		Map<String, List<Menutree>> mapTree = new TreeMap<String, List<Menutree>>();
		
		
		
		
		for (int i = 0; i < tree.size(); i++) {

			Menutree m = tree.get(i);

			boolean find_0 = m.getRightParentCode().equals(0);// 找到一级列表 名
			if (find_0) {

				mapTree.put(m.getRightCode() + "-" + m.getRightText(), null);

			}

		}
		
		//map  创建 选项卡  
		for (Iterator<String> iter = mapTree.keySet().iterator(); iter.hasNext();) {
			//返回列表名
			
			String   keyname=iter.next();
			String[] key= keyname.split("-");
			
			
			System.out.println(key[0]);
			
			List<Menutree>  tempM=new ArrayList<Menutree>();
		
			for (int i = 0; i < tree.size(); i++) {
					
				 Menutree  mt= tree.get(i);
				 //过滤子节点
				// System.out.println(" 过滤子节点 : "+mt.getRightParentCode()+"   "+key[0]+"  "+(mt.getRightParentCode().toString().equals(key[0])));
				 if(mt.getRightParentCode().toString().equals(key[0])){
					 
					 tempM.add(mt);
					 System.out.println(mt.toString());
				 }
				
			}
			mapTree.put(keyname, tempM);
			
			
			
		}
		
		

		// -------------------------------------------

		// 自定义json，因为库的字段和页面 不一致
		StringBuffer treeJson = new StringBuffer();

		for (int i = 0; i < tree.size(); i++) {

			Menutree m = tree.get(i);

			treeJson.append("{");
			treeJson.append("id:" + m.getRightCode());
			treeJson.append(",");
			treeJson.append("pId:" + m.getRightParentCode());
			treeJson.append(",");
			treeJson.append("name:" + m.getRightText());
			treeJson.append(",");
			treeJson.append("page:" + m.getRightUrl());
			treeJson.append("}");

			treeJson.append(",");

		}

		//System.out.println(treeJson.toString());

		// 返回json串
		// String json= JSON.toJSONString(tree);

		// System.out.println(json);

	}

}
