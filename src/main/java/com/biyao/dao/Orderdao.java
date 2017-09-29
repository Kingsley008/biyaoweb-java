package com.biyao.dao;

import com.biyao.pojo.ProductDetail;
import com.biyao.pojo.TrxInfobean;
import org.apache.ibatis.annotations.*;

import java.util.ArrayList;

/**
 * Created by ASUS on 2017/9/24.
 * id int auto_increment primary key comment "主键",
 */

public interface Orderdao {
    /* 显示当前用户已经下单的产品 */
    @Results({
            @Result(property="id", column="id"),
            @Result(property="contentId", column=" contentId"),
            @Result(property="userId", column="userId"),
            @Result(property="trueName", column="trueName"),
            @Result(property="address", column="address"),
            @Result(property="price", column="price"),
            @Result(property="size", column="size"),
            @Result(property="color", column="color"),
            @Result(property="buyTime", column="buytime"),
            @Result(property="buyNumber", column="buyNumber"),
            @Result(property="comments", column="comments"),
            @Result(property="rank", column="rank"),
            @Result(property="productName", column="productName"),
            @Result(property="icon", column="icon")
    })

    @Select("select * from trx where userId = #{userId} order by id desc ")
    ArrayList<TrxInfobean> showOderList(@Param(value = "userId") int userId);

    /* 添加订单的评论 */
    @Update("update trx set comments = #{comments}, rank = #{rank} where id = #{id}  ")
    int updateComment(@Param(value = "id") int id, @Param(value = "comments") String comments, @Param(value = "rank") int rank);
    /* 展示评论*/
        /* 显示当前用户已经下单的产品 */
    @Results({
            @Result(property="id", column="id"),
            @Result(property="contentId", column=" contentId"),
            @Result(property="userId", column="userId"),
            @Result(property="trueName", column="trueName"),
            @Result(property="address", column="address"),
            @Result(property="price", column="price"),
            @Result(property="size", column="size"),
            @Result(property="color", column="color"),
            @Result(property="buyTime", column="buytime"),
            @Result(property="buyNumber", column="buyNumber"),
            @Result(property="comments", column="comments"),
            @Result(property="rank", column="rank"),
            @Result(property="productName", column="productName"),
            @Result(property="icon", column="icon")
    })

    @Select("select * from trx order by id desc LIMIT 20")
    ArrayList<TrxInfobean> showComments();

    /* 展示评论*/
        /* 显示当前用户已经下单的产品 */
    @Results({
            @Result(property="id", column="id"),
            @Result(property="contentId", column=" contentId"),
            @Result(property="userId", column="userId"),
            @Result(property="trueName", column="trueName"),
            @Result(property="address", column="address"),
            @Result(property="price", column="price"),
            @Result(property="size", column="size"),
            @Result(property="color", column="color"),
            @Result(property="buyTime", column="buytime"),
            @Result(property="buyNumber", column="buyNumber"),
            @Result(property="comments", column="comments"),
            @Result(property="rank", column="rank"),
            @Result(property="productName", column="productName"),
            @Result(property="icon", column="icon")
    })

    @Select("select * from trx  where productName = #{productName} order by id desc LIMIT 20" )
    ArrayList<TrxInfobean> getComments(String productName);
}
