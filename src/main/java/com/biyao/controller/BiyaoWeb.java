package com.biyao.controller;

import com.biyao.dao.Indexdao;
import com.biyao.dao.Userdao;
import com.biyao.pojo.*;
import com.biyao.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by ASUS on 2017/9/14.
 */

@Controller
public class BiyaoWeb {
    @Autowired
    private Indexdao indexdao;
    @Autowired
    private ProductService productService;
    @Autowired
    Userdao userdao;
    @RequestMapping(value = "/index")
    public String showIndex(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        ArrayList<IndexSlider> sliderList = (ArrayList<IndexSlider>) indexdao.getIndexInfo();
        User user = null;
        map.addAttribute("sliderList",sliderList);
        // 通过cookie中的userId 查询U
        Cookie[] cookies = request.getCookies();//这样便可以获取一个cookie数组
        for(Cookie cookie : cookies){
           if(cookie.getName().equals("userId")){
               int userId =  Integer.parseInt(cookie.getValue());
               user = userdao.findUserById(userId);
               session.setAttribute("user",user);
           }

        }

        if(user != null){
            map.addAttribute("user", user);
        }

        return "index";
    }

    @RequestMapping(value = "/getManCatagory",produces="application/json")
    public String showManCatagory(ModelMap map, HttpSession session) throws IOException {
        ArrayList<ProductList> manClotheList = (ArrayList<ProductList>) indexdao.showList("男装");
        map.addAttribute("ClotheList",manClotheList);
        User user = (User)session.getAttribute("user");
        if(user != null){
            map.addAttribute("user", user);
        }
        return "index";
    }

    @RequestMapping(value = "/getWomanCatagory",produces="application/json")
    public String showWomanCatagory(ModelMap map, HttpSession session) throws IOException {
        User user = (User)session.getAttribute("user");
        if(user != null){
            map.addAttribute("user", user);
        }
        ArrayList<ProductList> womanClotheList = (ArrayList<ProductList>) indexdao.showList("女装");
        map.addAttribute("ClotheList",womanClotheList);
        return "index";
    }

    /*分类页*/
    @RequestMapping(value = "/category")
    public String showCategory(ModelMap map, HttpSession session,HttpServletRequest request) throws IOException {
        User user = (User)session.getAttribute("user");
        if(user != null){
            map.addAttribute("user", user);
        }
        String catagory = request.getParameter("category");
        ArrayList<ProductList> shirtList = null;
        ArrayList totalProductList = new ArrayList();

        // 得到 所有的子分类
        ArrayList<Subcatagory> subcatagories = (ArrayList<Subcatagory>) indexdao.showSubCatagoryList(catagory);
        // 返回各个子分类的产品


        for (int i = 0; i < subcatagories.size(); i++){

            shirtList = (ArrayList<ProductList>) indexdao.showSubcatagoryList(catagory,subcatagories.get(i).getSubCatagory());
            totalProductList.add(shirtList);
        }


        //
        System.out.println(totalProductList);
        map.addAttribute("mainCatagory",catagory);
        map.addAttribute("list",totalProductList);
        map.addAttribute("subCatagory",subcatagories);

        return "showCategory";
    }


    @RequestMapping(value = "/product")
    public String showProduct(ModelMap map, HttpSession session,HttpServletRequest request) throws IOException {
        User user = (User)session.getAttribute("user");
        if(user != null){
            map.addAttribute("user", user);
        }

        int productId = Integer.parseInt(request.getParameter("productId"));

        ProductDetail productDetail = indexdao.showProductDetail(productId);
        String[] arrSize = productDetail.getSizes().split(";");
        String[] arrColor = productDetail.getColors().split(";");
        String[] arrImg = productDetail.getImgs().split(";");

        map.addAttribute("product",productDetail);
        map.addAttribute("arrSize",arrSize);
        map.addAttribute("arrColor",arrColor);
        map.addAttribute("arrImg",arrImg);
        return "product";
    }

    @RequestMapping(value = "/shoppingCart")
    public String showShoppingCart(ModelMap map, HttpSession session) throws IOException {
        User user = (User)session.getAttribute("user");
        if(user != null){
            map.addAttribute("user", user);
        }
        return "shoppingCart";
    }

    @RequestMapping(value = "/login")
    public String showLogin(ModelMap map, HttpSession session) throws IOException {
        User user = (User)session.getAttribute("user");
        if(user != null){
            map.addAttribute("user", user);
        }
        return "login";
    }

    @RequestMapping(value = "/register")
    public String showRegister(ModelMap map, HttpSession session) throws IOException {
        User user = (User)session.getAttribute("user");
        if(user != null){
            map.addAttribute("user", user);
        }
        return "register";
    }

    @RequestMapping(value = "/settlement")
    public String showSettlement(ModelMap map, HttpSession session) throws IOException {
        User user = (User)session.getAttribute("user");
        if(user != null){
            map.addAttribute("user", user);
        }
        return "settlement";
    }





}
