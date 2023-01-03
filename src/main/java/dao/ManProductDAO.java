package dao;

import models.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;

public class ManProductDAO {
    static Connection connection = ConnectionMySql.getConnection();


    public static List<Product> getAllManShirt() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM product WHERE product.category='shirt' AND product.size='s' ";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("idproduct");
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
    public static List<Product> getAllManCoat() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM product WHERE product.category='coat' AND product.size='s' ";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("idproduct");
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
    public static List<Product> getAllManJeans() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM product WHERE product.category='jeans' AND product.size='s' ";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("idproduct");
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
    public static List<Product> getAllManShort() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM product WHERE product.category='short' AND product.size='s' ";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("idproduct");
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
        String sql = "SELECT * FROM product WHERE  upper(product.productname) like  '%" + search.toUpperCase() + "%'" +"AND product.size='s'" ;
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
                products.add(new Product(id,category,productname,color,size,price,amountproduct,imgproduct));
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
        return products;

    }



}
//
//    public static boolean save(Product product) {
//        String sql = "insert into product value (?,?,?,?)";
//        Connection connection = ConnectionMySql.getConnection();
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setInt(1, product.getId());
//            preparedStatement.setString(2, product.getName());
//            preparedStatement.setString(4, product.getImg());
//            preparedStatement.setDouble(3, product.getPrice());
//            return preparedStatement.execute();
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    public static boolean edit(Product product) {
//        String sql = "update product set name=?, img=?, price=? where id=?";
//        Connection connection = ConnectionMySql.getConnection();
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setInt(4, product.getId());
//            preparedStatement.setString(1, product.getName());
//            preparedStatement.setString(2, product.getImg());
//            preparedStatement.setDouble(3, product.getPrice());
//            return preparedStatement.execute();
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }

