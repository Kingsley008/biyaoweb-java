package com.biyao.controller;

import com.biyao.dao.Userdao;
import com.biyao.pojo.User;
import com.biyao.service.UserService;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;


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
        Cookie[] cookies = request.getCookies();//这样便可以获取一个cookie数组
        ObjectMapper mapper = new ObjectMapper();
//        for(Cookie cookie : cookies){
//            // get the cookie name
//            if(cookie.getName().equals("user")){
//                String json =  cookie.getValue();
//                User u= mapper.readValue(json, User.class);
//            };
//            // get the cookie value
//        }
        System.out.println(user);
        if(user != null){
            // 已经登入
            map.addAttribute("user", user);
            map.addAttribute("message","不要重复登录请先退出");
        } else {
            String phoneNumber = request.getParameter("username");
            String password = request.getParameter("password");
            boolean ret = userService.checkUser(phoneNumber,password);
            System.out.println( phoneNumber+ password + ret);
            if (ret) {
                user = userService.getUser();
                String json = mapper.writeValueAsString(user);
                String _json = URLEncoder.encode(json, "UTF-8");
                Cookie cookie = new Cookie("user",_json);
                System.out.println("json" + _json);
                cookie.setMaxAge(3600000);
                cookie.setPath("/");
                response.addCookie(cookie);
                session.setAttribute("user", user);
                user = (User)session.getAttribute("user");
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
