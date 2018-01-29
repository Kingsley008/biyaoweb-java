package com.biyao.dao;

import com.biyao.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.ArrayList;

/**
 *
 */

public interface Userdao {
    /**
     * 注册添加新用户
     */
    @Insert("insert into user values(0,#{phoneNumber},#{password},#{trueName},#{address},0)")
    int addUser(@Param(value = "phoneNumber")String phoneNumber, @Param(value = "password")String password, @Param(value = "address")String address,
                      @Param(value = "trueName")String trueName);

    /**
     * 管理员添加新用户
     */
    @Insert("insert into user values(0,#{phoneNumber},#{password},#{trueName},#{address},#{type})")
    int addUserAdmin(User user);

    /**
     * id查询用户
     */
    @Select("select * from user where id = #{id}")
    User findUserById(int id);

    /**
     * id 更新信息
     */
    @Update(" update user set phoneNumber = #{phoneNumber}, trueName = #{trueName}, address = #{address} where id = #{id}")
    int updateUserById(@Param(value = "id") int id,@Param(value = "trueName") String trueName, @Param(value = "address") String address, @Param(value = "phoneNumber") String phoneNumber);

    /*
    * 分页查询用户信息
    * */
    @Select("select * from user Limit #{start}, 10")
    ArrayList<User>showUserList(int start);

    /*
    * 更新用户信息
    * */
    @Results({
            @Result(property = "id", column = "id"),
            @Result(property = "phoneNumber", column = "phoneNumber"),
            @Result(property = "password", column = "password"),
            @Result(property = "trueName", column = "trueName"),
            @Result(property = "address", column = "address"),
            @Result(property = "type", column = "type"),
    })
    @Update(" update user set phoneNumber = #{phoneNumber}, trueName = #{trueName}, address = #{address}, password = #{password}, type = #{type}  where id = #{id}")
    int updateUserInfo(User user);

    /**/
    @Select("select count(*) from user")
    int getUserTotalRow();

    /*
    * 删除用户信息
    * */
    @Delete("delete from user where id = #{id}")
    int deleteUser(int id);
}
