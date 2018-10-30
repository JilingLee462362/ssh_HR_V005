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

        // 方案一 ： 分类 ， 类下列表
        Map<String, List<Menutree>> mapTree = new TreeMap<String, List<Menutree>>();

        for (int i = 0; i < tree.size(); i++) {

            Menutree m = tree.get(i);

            boolean find_0 = m.getRightParentCode().equals(0);// 找到一级列表 名
            if (find_0) {

                mapTree.put(m.getRightCode() + "-" + m.getRightText(), null);

            }

        }

        // map 创建 选项卡
        for (Iterator<String> iter = mapTree.keySet().iterator(); iter
                .hasNext(); ) {
            // 返回列表名

            String keyname = iter.next();
            String[] key = keyname.split("-");

            System.out.println(key[0]);

            List<Menutree> tempM = new ArrayList<Menutree>();

            for (int i = 0; i < tree.size(); i++) {

                Menutree mt = tree.get(i);
                // 过滤子节点
                // System.out.println(" 过滤子节点 : "+mt.getRightParentCode()+"   "+key[0]+"  "+(mt.getRightParentCode().toString().equals(key[0])));
                if (mt.getRightParentCode().toString().equals(key[0])) {

                    tempM.add(mt);
                    System.out.println(mt.toString());
                }

            }
            mapTree.put(keyname, tempM);

        }

        // 方案二 ： 自定义json，因为库的字段和页面 不一致
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
