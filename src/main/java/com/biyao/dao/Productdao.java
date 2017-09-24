package com.biyao.dao;

import com.biyao.pojo.IndexSlider;
import com.biyao.pojo.ProductDetail;
import com.biyao.pojo.ProductList;
import com.biyao.pojo.Subcatagory;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ASUS on 2017/9/15.
 */
public interface Productdao {
    /**
     * 得到首页投图信息
     * @return
     */
    @Results({
            @Result(property="id", column="id"),
            @Result(property="productName", column="productName"),
            @Result(property="imgURL", column="imgURL"),
            @Result(property="pageURL", column="pageURL"),
    })
    @Select("select id,imgURL,pageURL from sliders")
    List<IndexSlider> getIndexInfo();

    /**
     * 通过一个商品的分类,得到一组商品的展示信息
     * @param
     * @return
     */
    @Results({
            @Result(property="id", column="id"),
            @Result(property="price", column="price"),
            @Result(property="icon", column="icon"),
            @Result(property="name", column="name"),
    })
    @Select("select * from content where catagory=#{catagory} LIMIT 10 ")
    List<ProductList> showList(String catagory);

    /**
     * 通过子分类查询到，某个具体的分类
     * @param
     * @return
     */
    @Results({
            @Result(property="id", column="id"),
            @Result(property="price", column="price"),
            @Result(property="icon", column="icon"),
            @Result(property="name", column="name"),
    })
    @Select("select * from content where catagory=#{catagory} and subCatagory = #{subCatagory} ")
    List<ProductList> showSubcatagoryList(@Param(value = "catagory") String catagory,@Param(value = "subCatagory") String subCatagory);
    /*
    *  id 查找商品详情
    *
 intro VARCHAR (100)
    * */
    @Results({
            @Result(property="id", column="id"),
            @Result(property="produceDate", column="produceDate"),
            @Result(property="intro", column="intro"),
            @Result(property="price", column="price"),
            @Result(property="imgs", column="imgs"),
            @Result(property="name", column="name"),
            @Result(property="sizes", column="sizes"),
            @Result(property="colors", column="colors"),
            @Result(property="text", column="text")

    })
    @Select("select * from content where id = #{id} ")
    ProductDetail showProductDetail(@Param(value = "id") int id);

    /*
    * 得到分类的子分类
    * */
    @Results({
            @Result(property="subCatagory", column="subCatagory")
    })
    @Select("select distinct subCatagory from content where catagory = #{catagory} ")
    ArrayList<Subcatagory> showSubCatagoryList(@Param(value = "catagory") String catagory);

}
