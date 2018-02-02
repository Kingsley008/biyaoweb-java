package com.biyao.controller;

import com.biyao.dao.Orderdao;
import com.biyao.dao.Productdao;
import com.biyao.dao.Userdao;
import com.biyao.pojo.ProductOrderList;
import com.biyao.pojo.User;
import com.biyao.service.ProductService;
import com.biyao.util.XSSEnode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
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
@CrossOrigin(origins = "http://localhost:3000", maxAge = 3600)
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
    @RequestMapping(value = "/getOrderList", produces = "application/json" ,method = RequestMethod.GET)
    public String showNewProduct(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        User user = (User)session.getAttribute("user");
        System.out.println(user);
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

        return "alterOderInfo";
    }

    /*
    * 用户添加评论
    * */
    @RequestMapping(value = "/addComment",method = RequestMethod.GET)
    public String addComment(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        User user = (User)session.getAttribute("user");
        int id = Integer.parseInt(request.getParameter("id"));
        String comments = XSSEnode.xssEncode(request.getParameter("comments"));
        int rank = Integer.parseInt(request.getParameter("rank"));

        orderdao.updateComment(id, comments,rank);
        return "index";
    }
    /*
    * 展示评论
    * */
    @RequestMapping(value = "/showComments", produces = "application/json",method = RequestMethod.GET)
    public String showComment(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        ArrayList arr =  orderdao.showComments();
        map.addAttribute("commentsList", arr);
        return "index";
    }
    /*
    * 详情页评论展示
    * */
    @RequestMapping(value = "/getComments", produces = "application/json",method = RequestMethod.GET)
    public String getCommentByProductName(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        ArrayList arr =  orderdao.getComments(productId);
        map.addAttribute("commentsList", arr);
        return "index";
    }

    /*
    * 通过id查询商品 详情页
    * */
    @RequestMapping(value = "/getProductPageDetail", produces = "application/json",method = RequestMethod.GET)
    public String getDatailByProductName(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        String productPageDetail = productdao.showProductPageDetail(productId);
        System.out.print(productPageDetail);
        map.addAttribute("productPageDetail", productPageDetail);
        return "";
    }



    @RequestMapping(value = "/alterOderInfo", produces ="application/json",method = RequestMethod.GET)
    public String alterOderInfo(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        User user = (User)session.getAttribute("user");
        String newAddress = request.getParameter("address");
        String newName = request.getParameter("trueName");
        String newPhoneNumber = request.getParameter("phoneNumber");

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
    @RequestMapping(value = "/buy" ,produces="application/json",method = RequestMethod.POST)
    public String checkBuy(@RequestBody List<ProductOrderList> productOrderList, ModelMap map, HttpServletResponse response, HttpSession session, HttpServletRequest request) throws IOException, ServletException {

        User user = (User) session.getAttribute("user");
        user = (User)session.getAttribute("user");

        int i = productService.dealOrder(user,productOrderList);
        boolean b =  false;

        int code = response.getStatus();
        if(code > 0){
            b = true;
        }
        //返回一个JSON数据
        map.addAttribute("code",code);
        map.addAttribute("result",b);

        return"settleAccount";

    }

    @RequestMapping(value = "/success",method = RequestMethod.GET)
    public String showSuccess(ModelMap map, HttpSession session) throws IOException {
        User user = (User)session.getAttribute("user");
        if(user != null){
            map.addAttribute("user", user);
        }
        return "success";
    }

}
