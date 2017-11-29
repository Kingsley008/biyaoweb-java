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
     * @param
     * @return
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

    @Select("update content set produceDate = #{produceDate},intro = #{intro}, price = #{price}," +
            " imgs = #{imgs}, name =#{name}, sizes = #{sizes}, colors = #{colors}, text = #{text}, icon = #{icon} where id = #{id} ")
    String updateProductDetail(@Param(value = "id") int id,@Param(value = "produceDate") int produceDate , @Param(value = "intro") String intro,@Param(value = "price") long price,
                                      @Param(value = "imgs") String imgs,@Param(value = "name") String name, @Param(value = "sizes") String sizes, @Param(value = "colors") String colors,
                                      @Param(value = "text") String text,@Param(value = "icon") String icon);

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
    @Select("select * from content LIMIT #{start},20 ")
    ArrayList<ProductList> showTenProductList(@Param(value = "start") int start);

    @Select("select count(*) from content")
    int getTotalRow();

    /* 根据id 删除商品*/
    @Delete("delete from content where id = #{id}")
    int deleteProduct(int id);



    /*添加商品*/
    /*男装测试数据
    INSERT INTO content (id, name ,produceDate ,intro, catagory,subCatagory, sizes, newicon, colors, price, icon, imgs, text) VALUES
 (0, "净色小肌理免烫衬衫3005",7,"纯棉免烫衬衫 抗皱性强 易打理","男装","衬衫",
         "38;39;40;41;42;43;44", "1","蓝色;白色",
         245,"imgs/show/showsmall.jpg","imgs/product/p1.jpg;imgs/product/p2.jpg;imgs/product/p3.jpg;imgs/product/p4.jpg;imgs/product/p5.jpg",
    NULL);*/


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

}
