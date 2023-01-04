package dao;

import models.User;

import java.sql.*;

public class UserDAO {
    static Connection connection = ConnectionMySql.getConnection();
    public User login(String username,String password){
        String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            return new User(resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6),resultSet.getString(7));

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public User checkUser(String username){
        String sql = "SELECT * FROM user WHERE username = ? ";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            return new User(resultSet.getInt(1),
                    resultSet.getString(2),
                    resultSet.getString(3),
                    resultSet.getString(4),
                    resultSet.getString(5),
                    resultSet.getString(6),
                    resultSet.getString(7));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void register(String username,String password,String email){
        String sql = "INSERT INTO `casestudy_modul3_final`.`user` ( `username`, `password`, `phonenumber`, `email`, `address`, `role`) VALUES (?, ?, 'default', ?, 'default', 'user');";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            preparedStatement.setString(3,email);
            preparedStatement.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }

    }
}