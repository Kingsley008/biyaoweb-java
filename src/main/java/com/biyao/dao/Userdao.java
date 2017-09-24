package com.biyao.dao;

import com.biyao.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 *
 */

public interface Userdao {
    /**
     * 注册添加新用户
     */
    @Insert("insert into user values(0,#{phoneNumber},#{password},#{trueName},#{address})")
    int addUser(@Param(value = "phoneNumber")String phoneNumber, @Param(value = "password")String password, @Param(value = "address")String address,
                      @Param(value = "trueName")String trueName);
    /**
     * id查询用户
     */
    @Select("select * from user where id = #{id}")
    User findUserById(int id);

    /**
     * id 更新信息ute
     */
    @Update(" update user set phoneNumber = #{phoneNumber}, trueName = #{trueName}, address = #{address} where id = #{id}")
    int updateUserById(@Param(value = "id") int id,@Param(value = "trueName") String trueName, @Param(value = "address") String address, @Param(value = "phoneNumber") String phoneNumber);

}
