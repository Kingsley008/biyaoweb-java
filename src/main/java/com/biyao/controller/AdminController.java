package com.biyao.controller;

import com.biyao.dao.Orderdao;
import com.biyao.dao.Productdao;
import com.biyao.dao.Userdao;
import com.biyao.pojo.*;
import com.biyao.service.ProductService;
import com.biyao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.tools.Tool;
import java.io.File;
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
    @Autowired
    Orderdao orderdao;

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
            map.addAttribute("user", user);
        }
        map.addAttribute("status", ret);

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
    public String updateCurrentDetail(ModelMap map,@RequestBody ProductDetail productDetail, HttpServletRequest request){
        // int id = Integer.parseInt(request.getParameter("id"));
        System.out.print(productDetail);
        String ret = productdao.updateProductDetail(productDetail);
       // System.out.println(ret);
        map.addAttribute("message", 1);
        return "";
    }

    /* 添加新商品 */
    @RequestMapping(value = "/addNewProduct", produces = "application/json")
    public String addNewProduct(ModelMap map,@RequestBody ProductDetail productDetail, HttpServletRequest request){
        System.out.println(productDetail);
        int ret = productdao.addNewProduct(productDetail);
        System.out.print(ret);
        map.addAttribute("message",ret);
        return "";
    }

    /* 展示商品初略信息 */
    @RequestMapping(value = "/showUserList", produces = "application/json")
    public String showUsertList(ModelMap map, HttpServletRequest request){
        // 得到一共有多少条信息
        int totalCount = userdao.getUserTotalRow();
        // 每页显示10条 计算需要多少页
        int currentpage = Integer.parseInt(request.getParameter("currentPage"));
        // 得到默认显示的第一页的信息
        ArrayList<User> arr = userdao.showUserList((currentpage -1) * 10);
        map.addAttribute("userList", arr);
        map.addAttribute("totalCount", totalCount);
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
    public String updateUser(ModelMap map,@RequestBody User user, HttpServletRequest request){
        int message = userdao.updateUserInfo(user);

        map.addAttribute("message",message);
        return "";
    }

    /*管理员添加信息*/
    @RequestMapping(value = "/addUserAdmin",produces = "application/json")
    public String addUserAdmin(ModelMap map,@RequestBody User user, HttpServletRequest request){
        int message = userdao.addUserAdmin(user);
        map.addAttribute("message",message);
        return "";
    }

    @RequestMapping(value = "/getCategory",produces = "application/json")
    public String getCategory(ModelMap map,HttpServletRequest request){
        ArrayList arr = productdao.getCategory();
        map.addAttribute("category", arr);
        return "";
    }

    @RequestMapping(value = "/getSubCategory",produces = "application/json")
    public String getSubCategory(ModelMap map,HttpServletRequest request){
        String category = request.getParameter("category");
        ArrayList arr = productdao.getSubCategory(category);
        map.addAttribute("subCategory", arr);
        return "";
    }

    /*得到全部分类 产品*/
    @RequestMapping(value = "/getAllProducts",produces = "application/json")
    public String getAProducts(ModelMap map,HttpServletRequest request){

        int currentPage =  Integer.parseInt(request.getParameter("currentPage"));
        int totalCount = productdao.getTotalRow();
        ArrayList arr = productdao.getAllProductList((currentPage -1) * 10 );

        map.addAttribute("productList", arr);
        map.addAttribute("totalCount",totalCount);
        return "";
    }

    /*得到下拉分类 产品*/
    @RequestMapping(value = "/getProductsByCategory",produces = "application/json")
    public String getProductsByCategory(ModelMap map,HttpServletRequest request){
        String category = request.getParameter("category");
        int currentPage =  Integer.parseInt(request.getParameter("currentPage"));
        ArrayList arr = productdao.getProductListByCategory(category, (currentPage -1) * 10 );
        int totalCount = productdao.getProductListRowsByCategory(category);

        map.addAttribute("productList", arr);
        map.addAttribute("totalCount",totalCount);
        return "";
    }

    /*得到下拉子分类 产品*/
    @RequestMapping(value = "/getProductsByCategoryAndSub",produces = "application/json")
    public String getProductsByCategoryAndSub(ModelMap map,HttpServletRequest request){
        String category = request.getParameter("category");
        String subCategory = request.getParameter("subCategory");
        int currentPage =  Integer.parseInt(request.getParameter("currentPage"));
        int totalCount = productdao.getProductListRowsByCategoryAndSub(category,subCategory);
        ArrayList arr = productdao.getProductListByCategoryAndSubCategory(category,(currentPage -1) * 10 ,subCategory);

        map.addAttribute("productList", arr);
        map.addAttribute("totalCount",totalCount);
        return "";
    }

    /*处理图片上传相关*/
    @RequestMapping(value = "/uploadImage", produces = "application/json",method= RequestMethod.POST)
    public String uploadImage(ModelMap map,HttpServletResponse response, HttpServletRequest request, @RequestParam("file")MultipartFile file) throws IOException {
        //得到ajax传过来的file文件的文件名
        String fileName = file.getOriginalFilename();
        //判断file
        if(file!=null && !file.isEmpty()){
            //将file进行保存 E:\biyaoweb\src\main\webapp\WEB-INF\imgs
            file.transferTo(new File("E:/biyaoweb/src/main/webapp/WEB-INF/imgs/upload/"+file.getOriginalFilename()));
//服务器	    file.transferTo(new File("/home/OnlineShopSpringMVC/javawebshop/src/main/webapp/image/"+file.getOriginalFilename()));
        }
        int code = response.getStatus();
        String message = "上传";
        String address = "http://localhost:8080/biyaoweb/imgs/upload/"+fileName;
        //返回JSON数据
        map.addAttribute("code",code);
        map.addAttribute("message",message);
        map.addAttribute("address",address);
        System.out.print("return");
        return "";
    }

    /*
    *  订单相关
    * */

    // 分页获得订单
    @RequestMapping(value = "/getOrderListAdmin",produces = "application/json")
    public String getOrderList(ModelMap map,HttpServletRequest request){
        int currentPage = Integer.parseInt( request.getParameter("currentPage"));
        String phoneNumber = request.getParameter("phoneNumber");
        int totalCount = orderdao.getOrderListCount(phoneNumber);
        ArrayList orderList = orderdao.getOrderListByPhoneNumber(phoneNumber,((currentPage -1) * 10));
        map.addAttribute("orderList", orderList);
        map.addAttribute("totalCount", totalCount);
        return "";
    }
    // 删除订单
    @RequestMapping(value = "/deleteOrder",produces = "application/json")
    public String deleteOrder(ModelMap map,HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        int ret = orderdao.deleteOrder(id);
        System.out.println(ret);
        map.addAttribute("message","ok");
        return "";
    }
    // 更新订单
    @RequestMapping(value = "/updateOrder",produces = "application/json")
    public String updateOrder(ModelMap map,HttpServletRequest request,@RequestBody TrxInfobean trxInfobean){
        System.out.print(trxInfobean);
        String ret = orderdao.updateProductDetail(trxInfobean);
        map.addAttribute("message","ok");
        return "";
    }

}
