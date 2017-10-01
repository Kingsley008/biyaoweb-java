package com.biyao.controller;

import com.biyao.dao.Productdao;
import com.biyao.dao.Userdao;
import com.biyao.pojo.IndexSlider;
import com.biyao.pojo.User;
import com.biyao.service.ProductService;
import com.biyao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

/**
 * Created by ASUS on 2017/9/30.
 */
@Controller
public class AdminController {
    @Autowired
    private Productdao productdao;
    @Autowired
    private ProductService productService;
    @Autowired
    Userdao userdao;
    @Autowired
    UserService userService;
    /* 展示admin 登录*/
    @RequestMapping(value ="/adminlogin")
    public String showAdminLogin(ModelMap map, HttpServletRequest request){

        return "adminlogin";
    }
    /* 验证admin登录*/
    @RequestMapping(value ="/admin",produces ="application/json" )
    public String checkAdmin(ModelMap map, HttpServletRequest request){
        String name = request.getParameter("userName");
        String password = request.getParameter("password");
        boolean ret = userService.checkUser(name, password);
        if(ret){
            User user = userService.getUser();
            map.addAttribute("type",user.getType());
        }
        map.addAttribute("result", ret);

        return "adminlogin";
    }
    /* 展示 管理页面*/
    @RequestMapping(value ="/manage")
    public String showManage(ModelMap map, HttpServletRequest request){
        return "manage";
    }

    /* 管理幻灯片内容展示*/
    @RequestMapping(value ="/showSlider", produces = "application/json" )
    public String showSliderList(ModelMap map, HttpServletRequest request){
        ArrayList<IndexSlider> sliderList = (ArrayList<IndexSlider>) productdao.getSliderInfo();
        map.addAttribute("sliderList",sliderList);
        return "manage";
    }
    /* 更新幻灯片 */
    @RequestMapping(value ="/updateSlider", produces = "application/json")
    public String updateSliderList(ModelMap map, HttpServletRequest request, @RequestBody IndexSlider slider) {
        productdao.updateSliderInfo(slider.getId(),slider.getImgURL(), slider.getPageURL(), slider.getProductName());
        System.out.print(slider.getId());
        return "";
    }

}
