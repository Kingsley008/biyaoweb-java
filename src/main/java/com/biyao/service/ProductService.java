package com.biyao.service;

import com.biyao.dao.Indexdao;
import com.biyao.pojo.ProductDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Array;
import java.util.ArrayList;

/**
 * Created by ASUS on 2017/9/16.
 */

@Service
public class ProductService {
    @Autowired
    private Indexdao indexdao;
    public ArrayList getProductDetail(int id){
        ProductDetail productDetail = indexdao.showProductDetail(id);
        ArrayList arr = new ArrayList();
//        ArrayList arrSize = new ArrayList();
//        ArrayList arrColor = new ArrayList();
//        ArrayList arrImg = new ArrayList();

        String[] arrSize = productDetail.getSizes().split(";");
        String[] arrColor = productDetail.getColors().split(";");
        String[] arrimg = productDetail.getImgs().split(";");

        arr.add(arrSize);
        arr.add(arrColor);
        arr.add(arrimg);
        //[[size], [color], [img]] 0 1 2
        return arr;
    }

}
