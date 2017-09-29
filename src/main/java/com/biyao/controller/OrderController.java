package com.biyao.controller;

import com.biyao.dao.Orderdao;
import com.biyao.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by ASUS on 2017/9/24.
 */
@Controller
public class OrderController {
    @Autowired
    Orderdao orderdao;
    /*
    * JSON接口 返回当前用户的已经订购的商品信息 JSON
    *
    * */
    @RequestMapping(value = "/getOrderList", produces = "application/json")
    public String showNewProduct(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        User user = (User)session.getAttribute("user");
        Boolean b = false;
        if(user == null){

        } else {
            b = true;
            int id = user.getId();
            ArrayList arr =  orderdao.showOderList(id);
            map.addAttribute("orderList", arr);
            map.addAttribute("user", user);
        }

        map.addAttribute("checked", b); // false 没有登录   true 已经登录

        // 通过userId 取到 当前用户的订单

        return "index";
    }

    /*
    * 用户添加评论
    * */
    @RequestMapping(value = "/addComment")
    public String addComment(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        User user = (User)session.getAttribute("user");
        int id = Integer.parseInt(request.getParameter("id"));
        String comments = request.getParameter("comments");
        int rank = Integer.parseInt(request.getParameter("rank"));
    //    System.out.print(id + comments + rank);
        orderdao.updateComment(id, comments,rank);
        return "index";
    }
    /*
    * 展示评论
    * */
    @RequestMapping(value = "/showComments", produces = "application/json")
    public String showComment(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        ArrayList arr =  orderdao.showComments();
        map.addAttribute("commentsList", arr);
        return "index";
    }
    /*
    * 详情页评论展示
    * */
    @RequestMapping(value = "/getComments", produces = "application/json")
    public String getCommentByProductName(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        String productName = request.getParameter("productName");
        System.out.print(productName);
        ArrayList arr =  orderdao.getComments(productName);
        map.addAttribute("commentsList", arr);
        return "index";
    }

}
