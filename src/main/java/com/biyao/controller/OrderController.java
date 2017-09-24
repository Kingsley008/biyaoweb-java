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
        if(user != null){
            map.addAttribute("user", user);
        }
        int id = user.getId();
        // 通过userId 取到 当前用户的订单

        return "index";
    }
}
