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

		 
		// ���� �� �����б�
		Map<String, List<Menutree>> mapTree = new TreeMap<String, List<Menutree>>();
		
		
		
		
		for (int i = 0; i < tree.size(); i++) {

			Menutree m = tree.get(i);

			boolean find_0 = m.getRightParentCode().equals(0);// �ҵ�һ���б� ��
			if (find_0) {

				mapTree.put(m.getRightCode() + "-" + m.getRightText(), null);

			}

		}
		
		//map  ���� ѡ�  
		for (Iterator<String> iter = mapTree.keySet().iterator(); iter.hasNext();) {
			//�����б���
			
			String   keyname=iter.next();
			String[] key= keyname.split("-");
			
			
			System.out.println(key[0]);
			
			List<Menutree>  tempM=new ArrayList<Menutree>();
		
			for (int i = 0; i < tree.size(); i++) {
					
				 Menutree  mt= tree.get(i);
				 //�����ӽڵ�
				// System.out.println(" �����ӽڵ� : "+mt.getRightParentCode()+"   "+key[0]+"  "+(mt.getRightParentCode().toString().equals(key[0])));
				 if(mt.getRightParentCode().toString().equals(key[0])){
					 
					 tempM.add(mt);
					 System.out.println(mt.toString());
				 }
				
			}
			mapTree.put(keyname, tempM);
			
			
			
		}
		
		

		// -------------------------------------------

		// �Զ���json����Ϊ����ֶκ�ҳ�� ��һ��
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

		// ����json��
		// String json= JSON.toJSONString(tree);

		// System.out.println(json);

	}

}
