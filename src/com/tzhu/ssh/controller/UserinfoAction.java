package com.tzhu.ssh.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.tzhu.ssh.appcomm.base.BaseAction;
import com.tzhu.ssh.biz.UserinfoBizI;
import com.tzhu.ssh.entity.Menutree;
import com.tzhu.ssh.entity.Userinfo;

@ParentPackage(value = "struts-default")
@Controller
@Namespace("/ui")
public class UserinfoAction extends BaseAction implements ModelDriven<Userinfo> {

    private UserinfoBizI userinfoBizI;
    private Userinfo ui = new Userinfo();


    @Resource(name = "userinfoBizI")
    public void setUserinfoBizI(UserinfoBizI userinfoBizI) {
        this.userinfoBizI = userinfoBizI;
    }

    @Action(value = "loginout", results = {@Result(name = "login", location = "/login.jsp")})
    public String loginout() {

        sessionMap.remove("loginUI");
        sessionMap.remove("treeJson");
        sessionMap.remove("tree");

        return "login";

    }

    // @Action(value = "loginOut", results = { @Result(name = "index", location
    // = "/index.jsp", type = "redirect") })
    @Action(value = "login", results = {@Result(name = "main", location = "/admin/main.jsp")})
    public String login() {

        Userinfo loginUI = userinfoBizI.get(
                "from Userinfo where userName=? and userPassword=?",
                new String[]{ui.getUserName(), ui.getUserPassword()});

        List<Menutree> tree = loginUI.getRole().getMenutrees();

        // ����һ �� ���� �� �����б�
        Map<String, List<Menutree>> mapTree = new TreeMap<String, List<Menutree>>();

        for (int i = 0; i < tree.size(); i++) {

            Menutree m = tree.get(i);

            boolean find_0 = m.getRightParentCode().equals(0);// �ҵ�һ���б� ��
            if (find_0) {

                mapTree.put(m.getRightCode() + "-" + m.getRightText(), null);

            }

        }

        // map ���� ѡ�
        for (Iterator<String> iter = mapTree.keySet().iterator(); iter
                .hasNext(); ) {
            // �����б���

            String keyname = iter.next();
            String[] key = keyname.split("-");

            System.out.println(key[0]);

            List<Menutree> tempM = new ArrayList<Menutree>();

            for (int i = 0; i < tree.size(); i++) {

                Menutree mt = tree.get(i);
                // �����ӽڵ�
                // System.out.println(" �����ӽڵ� : "+mt.getRightParentCode()+"   "+key[0]+"  "+(mt.getRightParentCode().toString().equals(key[0])));
                if (mt.getRightParentCode().toString().equals(key[0])) {

                    tempM.add(mt);
                    System.out.println(mt.toString());
                }

            }
            mapTree.put(keyname, tempM);

        }

        // ������ �� �Զ���json����Ϊ����ֶκ�ҳ�� ��һ��
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

        sessionMap.put("treeJson", treeJson);
        sessionMap.put("loginUI", loginUI);
        sessionMap.put("tree", tree);
        sessionMap.put("mapTree", mapTree);
        return "main";

    }

    @Override
    public Userinfo getModel() {
        // TODO Auto-generated method stub
        return ui;
    }

}
