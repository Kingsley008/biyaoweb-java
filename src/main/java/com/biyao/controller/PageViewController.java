package com.biyao.controller;

import com.biyao.dao.Productdao;
import com.biyao.dao.Userdao;
import com.biyao.pojo.*;
import com.biyao.service.ProductService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ASUS on 2017/9/14.
 */

@Controller
public class PageViewController {
    @Autowired
    private Productdao productdao;
    @Autowired
    private ProductService productService;
    @Autowired
    Userdao userdao;

    /**
     * 查询轮播投图的信息返回首页
     **/
    @RequestMapping(value = "/index")
    public String showIndex(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        ArrayList<IndexSlider> sliderList = (ArrayList<IndexSlider>) productdao.getSliderInfo();
        User user = null;
        map.addAttribute("sliderList", sliderList);
        // 通过cookie中的userId 查询U
        Cookie[] cookies = request.getCookies();//这样便可以获取一个cookie数组
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("userId")) {
                int userId = Integer.parseInt(cookie.getValue());
                user = userdao.findUserById(userId);
                session.setAttribute("user", user);
            }

        }

        if (user != null) {
            map.addAttribute("user", user);
        }

        return "index";
    }

    @RequestMapping(value = "/indexJson", produces = "application/json")
    public String showIndexJson(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        ArrayList<IndexSlider> sliderList = (ArrayList<IndexSlider>) productdao.getSliderInfo();
        User user = null;
        map.addAttribute("sliderList", sliderList);
        // 通过cookie中的userId 查询U
        Cookie[] cookies = request.getCookies();//这样便可以获取一个cookie数组
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("user")) {
                String json = URLDecoder.decode(cookie.getValue(), "UTF-8");
                ObjectMapper mapper = new ObjectMapper();
                user = mapper.readValue(json, User.class);
                System.out.println("cookie" + user);
            }
        }

        session.setAttribute("user", user);
        user = (User) session.getAttribute("user");
        System.out.println(user);

        if (user != null) {
            map.addAttribute("user", user);
        }

        return "index";
    }


    /*
    * JSON接口 返回新上线的产品
    *
    * */
    @RequestMapping(value = "/getNewProducts", produces = "application/json")
    public String showNewProduct(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {

        return "index";
    }

    /*
    * JSON 接口返回最新的评论
    *
    * */
    @RequestMapping(value = "/getNewComments", produces = "application/json")
    public String showNewComments(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {

        return "index";
    }


    @RequestMapping(value = "/getManCatagory", produces = "application/json")
    public String showManCatagory(ModelMap map, HttpSession session) throws IOException {
        ArrayList<ProductList> manClotheList = (ArrayList<ProductList>) productdao.showList("男装");
        map.addAttribute("ClotheList", manClotheList);
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }
        return "index";
    }


    @RequestMapping(value = "/getWomanCatagory", produces = "application/json")
    public String showWomanCatagory(ModelMap map, HttpSession session) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }
        ArrayList<ProductList> womanClotheList = (ArrayList<ProductList>) productdao.showList("女装");
        map.addAttribute("ClotheList", womanClotheList);
        return "index";
    }

    /*分类页*/
    @RequestMapping(value = "/category")
    public String showCategory(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }
        String catagory = request.getParameter("category");
        ArrayList<ProductList> shirtList = null;
        ArrayList totalProductList = new ArrayList();

        // 得到 所有的子分类
        ArrayList<Subcatagory> subcatagories = (ArrayList<Subcatagory>) productdao.showSubCatagoryList(catagory);
        // 返回各个子分类的产品


        for (int i = 0; i < subcatagories.size(); i++) {

            shirtList = (ArrayList<ProductList>) productdao.showSubcatagoryList(catagory, subcatagories.get(i).getSubCatagory());
            totalProductList.add(shirtList);
        }


        //
        System.out.println(totalProductList);
        map.addAttribute("mainCatagory", catagory);
        map.addAttribute("list", totalProductList);
        map.addAttribute("subCatagory", subcatagories);

        return "showCategory";
    }

    @RequestMapping(value = "/categoryJson", produces = "application/json")
    public String showCategoryJson(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }
        String catagory = request.getParameter("category");
        ArrayList<ProductList> shirtList = null;
        ArrayList totalProductList = new ArrayList();
        System.out.println(catagory);
        // 得到 所有的子分类
        ArrayList<Subcatagory> subcatagories = (ArrayList<Subcatagory>) productdao.showSubCatagoryList(catagory);
        // 返回各个子分类的产品


        for (int i = 0; i < subcatagories.size(); i++) {

            shirtList = (ArrayList<ProductList>) productdao.showSubcatagoryList(catagory, subcatagories.get(i).getSubCatagory());
            totalProductList.add(shirtList);
        }


        //
        System.out.println(totalProductList);
        map.addAttribute("mainCatagory", catagory);
        map.addAttribute("list", totalProductList);
        map.addAttribute("subCatagory", subcatagories);

        return "showCategory";
    }


    @RequestMapping(value = "/product")
    public String showProduct(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }

        int productId = Integer.parseInt(request.getParameter("productId"));

        ProductDetail productDetail = productdao.showProductDetail(productId);
        String[] arrSize = productDetail.getSizes().split(";");
        String[] arrColor = productDetail.getColors().split(";");
        String[] arrImg = productDetail.getImgs().split(";");

        map.addAttribute("product", productDetail);
        map.addAttribute("arrSize", arrSize);
        map.addAttribute("arrColor", arrColor);
        map.addAttribute("arrImg", arrImg);
        return "product";
    }

    @RequestMapping(value = "/productJson", produces = "application/json")
    public String showProductJson(ModelMap map, HttpSession session, HttpServletRequest request) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }

        int productId = Integer.parseInt(request.getParameter("productId"));

        ProductDetail productDetail = productdao.showProductDetail(productId);
        String[] arrSize = productDetail.getSizes().split(";");
        String[] arrColor = productDetail.getColors().split(";");
        String[] arrImg = productDetail.getImgs().split(";");

        map.addAttribute("product", productDetail);
        map.addAttribute("arrSize", arrSize);
        map.addAttribute("arrColor", arrColor);
        map.addAttribute("arrImg", arrImg);
        return "";
    }

    @RequestMapping(value = "/shoppingCart")
    public String showShoppingCart(ModelMap map, HttpSession session) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }
        return "shoppingCart";
    }

    @RequestMapping(value = "/login")
    public String showLogin(ModelMap map, HttpSession session) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }
        return "login";
    }

    @RequestMapping(value = "/logout", produces = "application/json")
    public String dealLogout(ModelMap map, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
//        User user = (User) session.getAttribute("user");
//        int id = user.getId();
        session.removeAttribute("user");
        Cookie[] cookies = request.getCookies();//这样便可以获取一个cookie数组
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("user")) {
                cookie.setMaxAge(0);
                cookie.setDomain("/");
                cookie.setPath("/");
                response.addCookie(cookie);
            }
        }
        System.out.print("logout");
        String message = "1";
        map.addAttribute(message);
        return "login";
    }

    @RequestMapping(value = "/register")
    public String showRegister(ModelMap map, HttpSession session) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }
        return "register";
    }

    @RequestMapping(value = "/settlement")
    public String showSettlement(ModelMap map, HttpSession session) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }
        return "settlement";
    }

    @RequestMapping(value = "/purchased")
    public String showPurchased(ModelMap map, HttpSession session) throws IOException {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            map.addAttribute("user", user);
        }

        return "purchased";
    }

    /* 展示新品 */
    @RequestMapping(value = "/showNewProduct", produces = "application/json")
    public String showNewProduct(ModelMap map, HttpSession session) throws IOException {
        List<ProductList> arr = productdao.showNewList();
        map.addAttribute("newList", arr);
        return "";
    }

    /* 搜索模块 */
    @RequestMapping(value = "/showSearchProduct", produces = "application/json")
    public String showSearchProduct(ModelMap map, HttpServletRequest request){
        String name = request.getParameter("name");
        List<ProductList> arr = productdao.showSearchList(name);
        map.addAttribute("searchList", arr);
        return "";
    }


}
