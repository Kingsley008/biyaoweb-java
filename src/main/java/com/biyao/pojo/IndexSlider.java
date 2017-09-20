package com.biyao.pojo;

/**
 * Created by ASUS on 2017/9/15.
 */
public class IndexSlider {
    private int id; // 投图id
    String imgURL; // 图片地址
    String pageURL; // 对应的商品地址
    String productName; // 对应商品名称

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    public String getPageURL() {
        return pageURL;
    }

    public void setPageURL(String pageURL) {
        this.pageURL = pageURL;
    }

    @Override
    public String toString() {
        return "IndexSlider{" +
                "id=" + id +
                ", imgURL='" + imgURL + '\'' +
                ", pageURL='" + pageURL + '\'' +
                ", productName='" + productName + '\'' +
                '}';
    }
}
