package com.biyao.service;

import com.biyao.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by ASUS on 2017/9/20.
 */

@Service
public class UserService {
    private JdbcTemplate jdbcTemplate;
    boolean b = false;
    User u = new User();
    //对jdbcTemplate进行自动装配，在连接池中得到连接
    @Autowired
    public void setDataSource(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    //传入username和password两个参数
    public boolean checkUser(String phoneNumber, String password) {

        String sql ="select * from user where phoneNumber=? and password=?";

        // 执行查询,将动态参数放到object 数组里

        List<User> users = this.jdbcTemplate.query(sql, new Object[]{phoneNumber,password}
                ,new RowMapper<User>(){

                    //通过改写mapRow的方法对Userbean进行映射

                    @Override
                    public User mapRow(ResultSet rs, int rowNum) throws SQLException {
                        User user = new User();
                        user.setId(rs.getInt("id"));
                        user.setPhoneNumber(rs.getString("phoneNumber"));
                        user.setTrueName(rs.getString("trueName"));
                        user.setPassword(rs.getString("password"));
                        user.setAddress(rs.getString("address"));
                        user.setType(rs.getInt("type"));
                        return user;
                    }
                });

        // 判断集合对象是否为null 并且长度大于0

        if(users !=null && users.size()>0){
            u = users.get(0);
            b = true;
        }
        return b;
    }

    //用于controller中得到当前的User对象
    public User getUser(){
        return u;
    }

}
