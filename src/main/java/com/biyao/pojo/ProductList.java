package com.biyao.pojo;

/**
 *  利用分类查找 商品列表 返回 前10个
 */
public class ProductList {

    private int id; // 商品ID
    private String name; //商品名词
    private String icon; // 封面图
    private long price; // 商品价格

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "ProductList{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", icon='" + icon + '\'' +
                ", price=" + price +
                '}';
    }
}
