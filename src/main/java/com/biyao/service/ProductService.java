package com.biyao.service;

import com.biyao.dao.Productdao;
import com.biyao.pojo.ProductOrderList;
import com.biyao.pojo.TrxInfobean;
import com.biyao.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.sql.DataSource;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by ASUS on 2017/9/16.
 */

@Service
public class ProductService {
    private JdbcTemplate jdbcTemplate;
    @Autowired
    private Productdao indexdao;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }
    //添加订单，设置事务传播级别
    @Transactional(propagation= Propagation.REQUIRED)
    public int dealOrder(User user, List<ProductOrderList> productOrderList) {

        final ArrayList<TrxInfobean> arr = new ArrayList();
        for (ProductOrderList list : productOrderList) {
            TrxInfobean trx = new TrxInfobean();
            trx.setContentId(list.getProductId());
            trx.setPrice(list.getPrice());
            trx.setColor(list.getColor());
            trx.setIcon(list.getIcon());
            trx.setSize(list.getSize());
            trx.setProductName(list.getName());
            trx.setBuyNumber(list.getBuyNumber());
            trx.setAddress(user.getAddress());
            trx.setBuyNumber(list.getBuyNumber());
            trx.setTrueName(user.getTrueName());
            trx.setUserId(user.getId());
            trx.setPhoneNumber(user.getPhoneNumber());
            System.out.println(list.getProductId());
            Date date = new Date();//得到系统时间
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//小写的mm表示的是分钟  
            String goodsC_date = sdf.format(date);//转换时间的格式
            trx.setBuyTime(goodsC_date);
            arr.add(trx);
        }
        String sql = "insert into trx values (0,?,?,?,?,?,?,?,?,?,null,null,?,?,?)";
        //通过内部类创建批处理对象
        BatchPreparedStatementSetter bts = new BatchPreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement ps, int i) throws SQLException {
                //对应sql中的站位符号，i自动增长得到所有的内容
                ps.setInt(1, arr.get(i).getContentId());
                ps.setInt(2, arr.get(i).getUserId());
                ps.setString(3, arr.get(i).getTrueName());
                ps.setString(4, arr.get(i).getAddress());
                ps.setInt(5, arr.get(i).getPrice());
                ps.setString(6, arr.get(i).getColor());
                ps.setString(7, arr.get(i).getSize());
                ps.setString(8, arr.get(i).getBuyTime());
                ps.setInt(9, arr.get(i).getBuyNumber());
                ps.setString(10, arr.get(i).getIcon());
                ps.setString(11, arr.get(i).getProductName());
                ps.setString(12,arr.get(i).getPhoneNumber());
            }
            @Override
            public int getBatchSize() {
                // 得到批量增加的size
                return arr.size();
            }


        };
         int [] num = null;
         num = this.jdbcTemplate.batchUpdate(sql, bts);

        return num.length;
    }


}
