package services;

import dao.ManProductDAO;

import dao.ProductDAO;
import models.Product;

import java.util.List;

public class ProductService {
    public static List<Product> getAll() {
        return ProductDAO.getAll();
    }
    public static Product findProductById(int id) {
        return ProductDAO.findProductById(id);
    }
    public static boolean createProduct(Product product) {
        return ProductDAO.createProduct(product);
    }


    public static void editProduct(Product product) {
        ProductDAO.editProduct(product);
    }

    public static void deleteProduct(int id){
        ProductDAO.deleteProduct(id);

    }

    public static List<Product> getSearchProduct(String search){
        return ProductDAO.getSearchProduct(search);
    }
}
