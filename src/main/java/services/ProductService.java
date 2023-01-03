package services;

import dao.ProductWomenDAO;
import models.Product;

import java.util.List;

public class ProductService {
    public static List<Product> getAllWomenShirt(){
        return ProductWomenDAO.getAllWomenShirt();
    }
    public static boolean save(Product product){
        return ProductWomenDAO.save(product);
    }
}
