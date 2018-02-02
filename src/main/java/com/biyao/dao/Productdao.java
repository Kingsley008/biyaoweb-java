package com.biyao.dao;

import com.biyao.pojo.IndexSlider;
import com.biyao.pojo.ProductDetail;
import com.biyao.pojo.ProductList;
import com.biyao.pojo.Subcatagory;
import org.apache.ibatis.annotations.*;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ASUS on 2017/9/15.
 */

public interface Productdao {
    /**
     * 得到首页投图信息
     *
     * @return
     */
    @Results({
            @Result(property = "id", column = "id"),
            @Result(property = "productName", column = "productName"),
            @Result(property = "imgURL", column = "imgURL"),
            @Result(property = "pageURL", column = "pageURL"),
    })
    @Select("select id,imgURL,pageURL,productName from sliders")
    List<IndexSlider> getSliderInfo();

    /*
    * 更新投图信息
    *
    * */
    @Select("update sliders set imgURL = #{imgURL},pageURL = #{pageURL}, productName = #{productName} where id = #{id}")
    String updateSliderInfo(@Param(value = "id") int id, @Param(value = "imgURL") String imgURL, @Param(value = "pageURL") String pageURL, @Param(value = "productName") String prodcutName);

    /**
     * 通过一个商品的分类,得到一组商品的展示信息
     *
     */
    @Results({
            @Result(property = "id", column = "id"),
            @Result(property = "price", column = "price"),
            @Result(property = "icon", column = "icon"),
            @Result(property = "name", column = "name"),
    })
    @Select("select * from content where catagory=#{catagory} LIMIT 10 ")
    List<ProductList> showList(String catagory);

    /**
     * 通过子分类查询到，某个具体的分类
     *
     * @param
     * @return
     */
    @Results({
            @Result(property = "id", column = "id"),
            @Result(property = "price", column = "price"),
            @Result(property = "icon", column = "icon"),
            @Result(property = "name", column = "name"),
    })
    @Select("select * from content where catagory=#{catagory} and subCatagory = #{subCatagory} ")
    List<ProductList> showSubcatagoryList(@Param(value = "catagory") String catagory, @Param(value = "subCatagory") String subCatagory);

    /*
    *  id 查找商品详情
    *
    * */
    @Results({
            @Result(property = "id", column = "id"),
            @Result(property = "produceDate", column = "produceDate"),
            @Result(property = "intro", column = "intro"),
            @Result(property = "price", column = "price"),
            @Result(property = "imgs", column = "imgs"),
            @Result(property = "name", column = "name"),
            @Result(property = "sizes", column = "sizes"),
            @Result(property = "colors", column = "colors"),
            @Result(property = "text", column = "text")
    })
    @Select("select * from content where id = #{id} ")
    ProductDetail showProductDetail(@Param(value = "id") int id);
    /*
    *  id 查找商品 详情页面
    *
    * */
    @Select("select text from content where id = #{id} ")
    String showProductPageDetail(@Param(value = "id") int id);

    /*
 *  id 更新商品详情
 *
 * */
    @Results({
            @Result(property = "id", column = "id"),
            @Result(property = "produceDate", column = "produceDate"),
            @Result(property = "intro", column = "intro"),
            @Result(property = "price", column = "price"),
            @Result(property = "imgs", column = "imgs"),
            @Result(property = "name", column = "name"),
            @Result(property = "sizes", column = "sizes"),
            @Result(property = "colors", column = "colors"),
            @Result(property = "text", column = "text")

    })
    /*
    * @Param(value = "id") int id,@Param(value = "produceDate") int produceDate , @Param(value = "intro") String intro,@Param(value = "price") long price,
                                      @Param(value = "imgs") String imgs,@Param(value = "name") String name, @Param(value = "sizes") String sizes, @Param(value = "colors") String colors,
                                      @Param(value = "text") String text,@Param(value = "icon") String icon
    */
    @Select("update content set produceDate = #{produceDate},intro = #{intro}, price = #{price}," +
            " imgs = #{imgs}, name =#{name}, sizes = #{sizes}, colors = #{colors}, text = #{text}, icon = #{icon} where id = #{id} ")
    String updateProductDetail(ProductDetail productDetail);

    /*
    * 得到分类的子分类
    * */
    @Results({
            @Result(property = "subCatagory", column = "subCatagory")
    })
    @Select("select distinct subCatagory from content where catagory = #{catagory} ")
    ArrayList<Subcatagory> showSubCatagoryList(@Param(value = "catagory") String catagory);

    /*
    *  管理页面
    *  商品粗略信息 通过id再展现详细信息的CRUD
    * */
    @Results({
            @Result(property = "id", column = "id"),
            @Result(property = "price", column = "price"),
            @Result(property = "icon", column = "icon"),
            @Result(property = "name", column = "name")
    })
    @Select("select * from content LIMIT #{start},10 ")
    ArrayList<ProductList> showTenProductList(@Param(value = "start") int start);

    /*
    * 通过检索得到分类信息
    * */
    @Select("select distinct catagory from content ")
    ArrayList<String> getCategory();

    /*
     * 通过检索得到子分类信息
     * */
    @Select("select distinct subCatagory from content where catagory = #{catagory} ")
    ArrayList<String> getSubCategory(@Param(value = "catagory") String catagory);

    /*
    * 通过分类检索productList
    * */
    @Select("select * from content LIMIT #{start},10")
    ArrayList<ProductList> getAllProductList(@Param(value = "start") int start);

    @Select("select * from content where catagory = #{category} LIMIT #{start},10")
    ArrayList<ProductList> getProductListByCategory(@Param(value = "category") String category,
                                                    @Param(value = "start") int start);

    @Select("select * from content where catagory = #{category} and subCatagory = #{subCatagory} LIMIT #{start},10")
    ArrayList<ProductList> getProductListByCategoryAndSubCategory(@Param(value = "category") String category,
                                                                  @Param(value = "start") int start,
                                                                  @Param(value = "subCatagory") String subCatagory);

    @Select("select count(*) from content where catagory = #{category}")
    int getProductListRowsByCategory(@Param(value = "category") String category);

    @Select("select count(*) from content where catagory = #{catagory} and subCatagory = #{subCatagory}")
    int getProductListRowsByCategoryAndSub(@Param(value = "catagory") String category, @Param(value = "subCatagory") String subCatagory);

    @Select("select count(*) from content")
    int getTotalRow();

    /* 根据id 删除商品*/
    @Delete("delete from content where id = #{id}")
    int deleteProduct(int id);


    /*添加商品*/
    @Results({
            @Result(property = "id", column = "id"),
            @Result(property = "produceDate", column = "produceDate"),
            @Result(property = "intro", column = "intro"),
            @Result(property = "price", column = "price"),
            @Result(property = "imgs", column = "imgs"),
            @Result(property = "name", column = "name"),
            @Result(property = "sizes", column = "sizes"),
            @Result(property = "colors", column = "colors"),
            @Result(property = "text", column = "text")
    })

    @Insert("insert into content values (0, #{name}, #{produceDate}, #{intro}, #{catagory},#{subCatagory},#{sizes}," +
            "#{newicon}, #{colors}, #{price}, #{icon}, #{imgs}, #{text})")
    int addNewProduct(ProductDetail productDetail);

    /* 首页新品展示 */
    @Results({
            @Result(property = "id", column = "id"),
            @Result(property = "price", column = "price"),
            @Result(property = "icon", column = "icon"),
            @Result(property = "name", column = "name"),
    })
    @Select("select * from content order by id desc LIMIT 24 ")
    List<ProductList> showNewList();

    /* 搜索模糊匹配 */
    @Results({
            @Result(property = "id", column = "id"),
            @Result(property = "price", column = "price"),
            @Result(property = "icon", column = "icon"),
            @Result(property = "name", column = "name"),
    })

    @Select("select * from content where name like '%${name}%'")
    List<ProductList> showSearchList(@Param(value = "")String name);
}
