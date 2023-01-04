package dao;

import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    static Connection connection = ConnectionMySql.getConnection();
    public static List<Product> getAll() {
        List<Product> products = new ArrayList<>();
        String sql = "Select * from product";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String category = resultSet.getString("category");
                String productname = resultSet.getString("productname");
                String color = resultSet.getString("color");
                String size = resultSet.getString("size");
                double price = resultSet.getDouble("price");
                int amountproduct = resultSet.getInt("amountproduct");
                String imgproduct = resultSet.getString("imgproduct");
                products.add(new Product(id,category,productname,color,size,price,amountproduct,imgproduct));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return products;
    }
    public static List<Product> getSearchProduct(String search) {
        String sql = "SELECT * FROM product WHERE  upper(product.productname) like  '%" + search.toUpperCase() + "%'" + "AND product.size='s'";
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("idproduct");
                String category = resultSet.getString("category");
                String productname = resultSet.getString("productname");
                String color = resultSet.getString("color");
                String size = resultSet.getString("size");
                double price = resultSet.getDouble("price");
                int amountproduct = resultSet.getInt("amountproduct");
                String imgproduct = resultSet.getString("imgproduct");
                products.add(new Product(id, category, productname, color, size, price, amountproduct, imgproduct));
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
        return products;
    }
public static Product findproductbynameandsize(String productname,String size){
        String sql = "SELECT * FROM product WHERE  product.productname = "+productname+"and product.size ="+size;
    try {
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        resultSet.next();
        int idproduct = resultSet.getInt("idproduct");
        String category = resultSet.getString("category");
        String producttype = resultSet.getString("producttype");
        String img = resultSet.getString("imgproduct");
        double price = resultSet.getDouble("price");
        String color = resultSet.getString("color");
        int amount = Integer.parseInt(resultSet.getString("amountproduct"));

        return new Product(idproduct,category,producttype,productname,color,size,price,amount,img);
    } catch (Exception e) {
        e.printStackTrace();
        return null;
    }
}

}
