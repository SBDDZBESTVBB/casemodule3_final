package com.example.case_module3_final.services;

import com.example.case_module3_final.dao.ManProductDAO;

import com.example.case_module3_final.models.Product;

import java.util.List;

public class ProductService {
    public static List<Product> getAllManProduct(){
        return ManProductDAO.getAllManCoat();
    }
}
