package com.util;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.util.List;

/**
 *
 * @author vj
 */



public class ProductDetails {  // class name
    private List<String> product_name;     //storing name in a list array. 
    private List<String> product_description;
    private List<String> product_price;
    private List<String> product_brand;
    private List<String> product_image;

    public void setProduct_name(List<String> product_name) {        
        this.product_name = product_name;        
    }
    
    public List<String> getProduct_name() {
        if(product_name!=null){
            System.out.println("In USER BEAN");
        }
        return product_name;
    }

    public List<String> getProduct_description() {
        
        return product_description;
    }

    public void setProduct_description(List<String> product_description) {
        this.product_description = product_description;
    }

    public List<String> getProduct_price() {
        return product_price;
    }

    public void setProduct_price(List<String> product_price) {
        this.product_price = product_price;
    }

    public List<String> getProduct_brand() {
        return product_brand;
    }

    public void setProduct_brand(List<String> product_brand) {
        this.product_brand = product_brand;
    }
    public List<String> getProduct_image() {
        return product_image;
    }

    public void setProduct_image(List<String> product_image) {
        this.product_image = product_image;
    }
}
