package com.biyao.pojo;

/**
 * Created by ASUS on 2017/9/15.
 */
public class ProductDetail {
    private int id;
    private String name;
    private int produceDate; //comment"生产周期",
    private String intro; // comment "介绍",
    private String catagory; // 商品分类
    private String subCatagory;
    private String sizes;
    private int newicon;
    private String colors;
    private long price;
    private String icon; //
    private String imgs; // 全部的展示图片
    private String text; //详情页html内容

    @Override
    public String toString() {
        return "ProductDetail{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", produceDate=" + produceDate +
                ", intro='" + intro + '\'' +
                ", catagory='" + catagory + '\'' +
                ", subCatagory='" + subCatagory + '\'' +
                ", sizes='" + sizes + '\'' +
                ", newicon=" + newicon +
                ", colors='" + colors + '\'' +
                ", price=" + price +
                ", icon='" + icon + '\'' +
                ", imgs='" + imgs + '\'' +
                ", text='" + text + '\'' +
                '}';
    }

    public int getProduceDate() {
        return produceDate;
    }

    public void setProduceDate(int produceDate) {
        this.produceDate = produceDate;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCatagory() {
        return catagory;
    }

    public void setCatagory(String catagory) {
        this.catagory = catagory;
    }

    public String getSubCatagory() {
        return subCatagory;
    }

    public void setSubCatagory(String subCatagory) {
        this.subCatagory = subCatagory;
    }

    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }

    public int getNewicon() {
        return newicon;
    }

    public void setNewicon(int newicon) {
        this.newicon = newicon;
    }

    public String getColors() {
        return colors;
    }

    public void setColors(String colors) {
        this.colors = colors;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getImgs() {
        return imgs;
    }

    public void setImgs(String imgs) {
        this.imgs = imgs;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }


}
