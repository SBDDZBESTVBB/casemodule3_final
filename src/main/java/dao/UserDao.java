package dao;

import models.User;

import java.sql.*;

public class UserDAO {
    static Connection connection = ConnectionMySql.getConnection();
    public User login(String username,String password){
        String sql = "SELECT * FROM user WHERE user.username = ? AND user.password = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            return new User(resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6));

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public User checkUser(String username){
        String sql = "SELECT * FROM user WHERE user.username = ? ";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            int iduser = resultSet.getInt("iduser");
            return new User(resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6));

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void register(String username,String password){
        String sql = "INSERT INTO user VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            preparedStatement.executeUpdate();
        } catch (SQLException e){
            e.printStackTrace();
        }

    }

}
