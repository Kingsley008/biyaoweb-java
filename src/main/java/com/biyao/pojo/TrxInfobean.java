package com.biyao.pojo;

import java.util.Date;

/**
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
    private String comments; // 新
    private int price;
    private String icon;
    private String productName;
    private int rank;

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

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

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
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
                ", buyTime='" + buyTime + '\'' +
                ", buyNumber=" + buyNumber +
                ", comments='" + comments + '\'' +
                ", price=" + price +
                ", icon='" + icon + '\'' +
                ", productName='" + productName + '\'' +
                ", rank=" + rank +
                '}';
    }
}
