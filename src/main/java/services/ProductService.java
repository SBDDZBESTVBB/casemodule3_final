package services;

<<<<<<< HEAD
import dao.ManProductDAO;

import dao.ProductDAO;
=======
import dao.ProductWomenDAO;
>>>>>>> d07227d8321e869b3e276f04474fabe4147a98f0
import models.Product;

import java.util.List;

public class ProductService {
<<<<<<< HEAD
    public static List<Product> getAllManProduct(){
        return ManProductDAO.getAllManCoat();
    }

    public static List<Product> getSearchProduct(String search){
        return ProductDAO.getSearchProduct(search);
    }
}

=======
    public static List<Product> getAllWomenShirt(){
        return ProductWomenDAO.getAllWomenShirt();
    }
    public static boolean save(Product product){
        return ProductWomenDAO.save(product);
    }
}
>>>>>>> d07227d8321e869b3e276f04474fabe4147a98f0
