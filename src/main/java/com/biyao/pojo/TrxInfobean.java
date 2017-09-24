package com.biyao.pojo;

import java.util.Date;

/**
 * Created by ASUS on 2017/9/21.
 * create table trx(
 id int auto_increment primary key comment "主键",
 contentId int  comment "商品ID",
 personId int comment "用户ID",
 trueName VARCHAR (20),
 address VARCHAR (100),
 price int comment "购买价格",
 color varchar(30) comment"颜色",
 size varchar(100) comment"尺寸",
 time varchar(30) comment "购买时间",
 buynum int comment"购买数量",
 comments varchar(500) comment "评论内容" DEFAULT NULL,
 )
 */
public class TrxInfobean {
    private int id;
    private int contentId;
    private int userId;
    private String trueName;
    private String address;
    private String color;
    private String size;
    private String buyTime; // 新
    private int buyNumber; // 新
    private String comment; // 新
    private int price;

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getContentId() {
        return contentId;
    }

    public void setContentId(int contentId) {
        this.contentId = contentId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getTrueName() {
        return trueName;
    }

    public void setTrueName(String trueName) {
        this.trueName = trueName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getBuyTime() {
        return buyTime;
    }

    public void setBuyTime(String buyTime) {
        this.buyTime = buyTime;
    }

    public int getBuyNumber() {
        return buyNumber;
    }

    public void setBuyNumber(int buyNumber) {
        this.buyNumber = buyNumber;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "TrxInfobean{" +
                "id=" + id +
                ", contentId=" + contentId +
                ", userId=" + userId +
                ", trueName='" + trueName + '\'' +
                ", address='" + address + '\'' +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", buyTime=" + buyTime +
                ", buyNumber=" + buyNumber +
                ", comment='" + comment + '\'' +
                '}';
    }
}
