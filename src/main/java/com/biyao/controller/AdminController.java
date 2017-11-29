package com.biyao.controller;

import com.biyao.dao.Productdao;
import com.biyao.dao.Userdao;
import com.biyao.pojo.IndexSlider;
import com.biyao.pojo.ProductDetail;
import com.biyao.pojo.ProductList;
import com.biyao.pojo.User;
import com.biyao.service.ProductService;
import com.biyao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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
    public String checkAdmin(ModelMap map, HttpServletRequest request, HttpSession session){
        String name = request.getParameter("userName");
        String password = request.getParameter("password");
        boolean ret = userService.checkUser(name, password);

        if(ret){
            User user = userService.getUser();
            map.addAttribute("type",user.getType());
            session.setAttribute("admin", user);
        }
        map.addAttribute("result", ret);

        return "adminlogin";
    }
    /* 展示 管理页面*/
    @RequestMapping(value ="/manage")
    public String showManage(ModelMap map, HttpServletRequest request, HttpServletResponse response, HttpSession session){
        User user = (User) session.getAttribute("admin");
        boolean b = user == null;
        if(b){
            try {
                request.getRequestDispatcher("/biyaoweb/index").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
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

    int pageCount = 0;
    /* 展示商品初略信息 */
    @RequestMapping(value = "/showProduct", produces = "application/json")
    public String showProductList(ModelMap map, HttpServletRequest request){

        // 得到一共有多少条信息
        int rowCount = productdao.getTotalRow();
        // 每页显示10条 计算需要多少页
        if(rowCount % 10 == 0) {
            pageCount = rowCount / 10;
        } else {
            pageCount = rowCount /10 + 1;
        }
        // 得到默认显示的第一页的信息
        ArrayList<ProductList> arr = productdao.showTenProductList(0);
        map.addAttribute("pageCount", pageCount);
        map.addAttribute("productList", arr);

        return "";
    }

    /* 响应删除点击 */
    @RequestMapping(value = "/deleteProduct", produces = "application/json")
    public String deleteProduct(ModelMap map, HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        int i = productdao.deleteProduct(id);
        System.out.print(i);
        map.addAttribute("message",i);
        return "";
    }


    /* 点击分页 展示信息*/
    @RequestMapping(value = "/dealProductPage", produces = "application/json")
    public String dealProductPage(ModelMap map, HttpServletRequest request){
        int currentpage = Integer.parseInt(request.getParameter("currentPage"));
        // 得到默认显示的第一页的信息
        ArrayList<ProductList> arr = productdao.showTenProductList((currentpage -1) * 20);
        map.addAttribute("productList", arr);
        map.addAttribute("pageCount", pageCount);
        return "";
    }

    /*点击详细信息 id 获得当前商品的详细的信息*/
    @RequestMapping(value = "/showCurrentDetail", produces = "application/json")
    public String showCurrentDetail(ModelMap map, HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        ProductDetail productDetail = productdao.showProductDetail(id);
        map.addAttribute("productDetail", productDetail);
        return "";
    }

    /*点击详细信息 更新当前商品的详细的信息*/
    @RequestMapping(value = "/updateCurrentDetail", produces = "application/json")
    public String updateCurrentDetail(ModelMap map,ProductDetail productDetail, HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        String ret = productdao.updateProductDetail(productDetail.getId(),productDetail.getProduceDate(),productDetail.getIntro()
        ,productDetail.getPrice(),productDetail.getImgs(),productDetail.getName(),productDetail.getSizes(),productDetail.getColors(),productDetail.getText(),productDetail.getIcon());
        System.out.print(ret);
        map.addAttribute("message", ret);
        return "";
    }

    /* 添加新商品 */
    @RequestMapping(value = "/addNewProduct", produces = "application/json")
    public String addNewProduct(ModelMap map,ProductDetail productDetail, HttpServletRequest request){
        int ret = productdao.addNewProduct(productDetail);
        System.out.print(ret);
        map.addAttribute("message",ret);
        return "";
    }

    /* 展示商品初略信息 */
    @RequestMapping(value = "/showUserList", produces = "application/json")
    public String showUsertList(ModelMap map, HttpServletRequest request){

        // 得到一共有多少条信息
        int rowCount = userdao.getUserTotalRow();
        // 每页显示10条 计算需要多少页
        if(rowCount % 10 == 0) {
            pageCount = rowCount / 10;
        } else {
            pageCount = rowCount /10 + 1;
        }
        // 得到默认显示的第一页的信息
        ArrayList<User> arr = userdao.showUserList(0);
        map.addAttribute("pageCount", pageCount);
        map.addAttribute("userList", arr);

        return "";
    }

    /* 响应删除点击 */
    @RequestMapping(value = "/deleteUser", produces = "application/json")
    public String deleteUser(ModelMap map, HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        int i = userdao.deleteUser(id);
        map.addAttribute("message",i);
        return "";
    }
    /*更新用户信息*/
    @RequestMapping(value = "/updateUser", produces = "application/json")
    public String User(ModelMap map,User user, HttpServletRequest request){
        int message = userdao.updateUserInfo(user);
        map.addAttribute("message",message);
        return "";
    }


    /* 点击分页 展示信息*/
    @RequestMapping(value = "/dealUserPage", produces = "application/json")
    public String dealUserPage(ModelMap map, HttpServletRequest request){
        int currentpage = Integer.parseInt(request.getParameter("currentPage"));
        // 得到默认显示的第一页的信息
        ArrayList<User> arr = userdao.showUserList((currentpage -1) * 20);
        map.addAttribute("userList", arr);
        map.addAttribute("pageCount", pageCount);
        return "";
    }


}
