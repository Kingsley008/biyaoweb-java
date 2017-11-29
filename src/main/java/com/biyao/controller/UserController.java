package com.biyao.controller;

import com.biyao.dao.Userdao;
import com.biyao.pojo.User;
import com.biyao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.CookiePolicy;

/**
 * Created by ASUS on 2017/9/19.
 */
@Controller
public class UserController {

    @Autowired
    Userdao userdao;
    @Autowired
    UserService userService;

    /*
    *
    * 用户注册功能
    * 成功 返回json 跳转 注册成功页面
    * */
    @RequestMapping(value = "/adduser", produces = "application/json")
    public String dealRegister(ModelMap map, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String phoneNumber = request.getParameter("phoneNumber");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String trueName = request.getParameter("trueName");
        System.out.print(phoneNumber + ":" + password + ":" + address);
        int ret = userdao.addUser(phoneNumber, password, address, trueName);
        if (ret == 1) {
            System.out.println("插入成功");
            map.addAttribute("result", 1);
        }
        map.addAttribute("status", response.getStatus());
        return "register";
    }

    /*
    *
    * 用户登录
    * 成功 返回json  存入session
    * */
    @RequestMapping(value = "/checklogin", produces = "application/json")
    public String dealLogin(ModelMap map, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User)session.getAttribute("user");
        if(user != null){
            // 已经登入
            map.addAttribute("user", user);
            map.addAttribute("message","不要重复登录请先退出");
        } else {
            String phoneNumber = request.getParameter("username");
            String password = request.getParameter("password");
            boolean ret = userService.checkUser(phoneNumber,password);
            System.out.print(phoneNumber+password+"ret"+ret);
            if (ret) {
                //TODO 将用户加入cookie 返回 再加一个接口/user 查询cookie中的user
                user = userService.getUser();
                System.out.println( "address"+ user.getAddress());
                session.setAttribute("user", user);
                user = (User)session.getAttribute("user");
                System.out.println(user.getAddress());
                map.addAttribute("result", 1);
                map.addAttribute("success",true);
                map.addAttribute("user",user);
            } else {
                String message ="帐号密码错误";
                //将状态码，信息，结果 响应 Ajax 的异步请求
                map.addAttribute("message",message);
                map.addAttribute("success",false);
                map.addAttribute("result",ret);
            }

            map.addAttribute("status", response.getStatus());
        }

        return "login";
    }




}
