package com.biyao.controller;

import com.biyao.dao.Orderdao;
import com.biyao.dao.Productdao;
import com.biyao.dao.Userdao;
import com.biyao.pojo.ProductOrderList;
import com.biyao.pojo.User;
import com.biyao.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ASUS on 2017/9/24.
 */
@Controller
public class OrderController {
    @Autowired
    Orderdao orderdao;
    @Autowired
    private Productdao productdao;
    @Autowired
    private ProductService productService;
    @Autowired
    Userdao userdao;
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
        ArrayList arr =  orderdao.getComments(productName);
        map.addAttribute("commentsList", arr);
        return "index";
    }


    @RequestMapping(value = "/alterOderInfo", produces ="application/json")
    public String alterOderInfo(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        User user = (User)session.getAttribute("user");
        String newAddress = request.getParameter("address");
        String newName = request.getParameter("trueName");
        String newPhoneNumber = request.getParameter("phoneNumber");
        System.out.print(newAddress + newName + newPhoneNumber);
        userdao.updateUserById(user.getId(),newName, newAddress, newPhoneNumber);
        User newUser = userdao.findUserById(user.getId());
        session.setAttribute("user", newUser);
        if(newUser != null){
            map.addAttribute("user", newUser);
        }

        return "settlement";
    }


    //处理订单返回一个JSON数据
    // @RequestBody List<> products 接受json数据 记录每一个商品的  contentId name color size buyNum
    // 从 session 中的user 得到 truename  userId
    // service 处理 当前date
    @RequestMapping(value = "/buy" ,produces="application/json",method= RequestMethod.POST)
    public String checkBuy(@RequestBody List<ProductOrderList> productOrderList, ModelMap map, HttpServletResponse response, HttpSession session, HttpServletRequest request) throws IOException, ServletException {
        //涉及到了事务的管理
        User user = (User) session.getAttribute("user");
        int i = productService.dealOrder(user,productOrderList);
        boolean b =  false;
        System.out.print(productOrderList);
        int code = response.getStatus();
        if(code > 0){
            b = true;
        }
        //返回一个JSON数据
        map.addAttribute("code",code);
        map.addAttribute("result",b);

        return"settleAccount";

    }

    @RequestMapping(value = "/success")
    public String showSuccess(ModelMap map, HttpSession session) throws IOException {
        User user = (User)session.getAttribute("user");
        if(user != null){
            map.addAttribute("user", user);
        }
        return "success";
    }

}
