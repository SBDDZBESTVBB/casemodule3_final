package com.example.case_module3_final.services;

import com.example.case_module3_final.dao.ManProductDAO;

import com.example.case_module3_final.models.Product;

import java.util.List;

public class ManProductService {
    public static List<Product> getAllManShirt(){
        return ManProductDAO.getAllManShirt();
    }
    public static List<Product> getAllManCoat(){
        return ManProductDAO.getAllManCoat();
    }
    public static List<Product> getAllManJeans(){
        return ManProductDAO.getAllManJeans();
    }
    public static List<Product> getAllManShort(){
        return ManProductDAO.getAllManShort();
    }
    public static List<Product> getSearchManShort(){
        return ManProductDAO.getSearchManShort();
    }
}
