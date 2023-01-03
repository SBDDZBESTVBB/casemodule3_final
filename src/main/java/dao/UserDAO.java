package dao;

import models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {
    private final String INSERT_USER = "insert into user (iduser, username, password, phonenumber, email, address) values ('user',?,?,?,?,?);";
    private final String SELECT_ALL_USER = "select * from user;";
    private Connection connection = ConnectionMySql.getConnection();
    private static UserDAO instance;

    public static UserDAO getInstance() {
        if (instance == null) {
            instance = new UserDAO();
        }
        return instance;


    }

    public void insert(User user) throws SQLException {
        try (Connection connection = ConnectionMySql.getConnection();
             PreparedStatement statement = connection.prepareStatement(INSERT_USER)) {
            setStatement(user, statement);
            statement.executeUpdate();
        }
    }


    @Override
    public List findAll() throws SQLException, ClassNotFoundException {
        try (Connection connection = ConnectionMySql.getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_ALL_USER)) {
            ResultSet result = statement.executeQuery();
            return getList(result);
        }
    }

    @Override
    public void setStatement(Object o, PreparedStatement statement) throws SQLException {

    }


    public void setStatement(User user, PreparedStatement statement) throws SQLException {
        statement.setString(1, user.getUsername());
        statement.setString(2, user.getPassword());
        statement.setString(3, user.getPhonenumber());
        statement.setString(4, user.getEmail());
        statement.setString(5, user.getAddress());

    }

    public List<User> getList(ResultSet result) throws SQLException {
        List<User> users = new ArrayList<>();
        while (result.next()) {
            int iduser = result.getInt("iduser");
            String username = result.getString("username");
            String password = result.getString("password");
            String phonenumber = result.getString("phonenumber");
            String email = result.getString("email");
            String address = result.getString("address");
            users.add(new User(iduser, username, password, phonenumber, email, address));
        }
        return users;
    }
}
