package com.biyao.dao;

import com.biyao.pojo.ProductDetail;
import com.biyao.pojo.TrxInfobean;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

/**
 * Created by ASUS on 2017/9/24.
 * id int auto_increment primary key comment "主键",
 */

public interface Orderdao {

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
            @Result(property="comments", column="comments")
    })
    @Select("select * from trx where userId = #{userId} ")
    ArrayList<TrxInfobean> showOderList(@Param(value = "userId") int userId);
}
