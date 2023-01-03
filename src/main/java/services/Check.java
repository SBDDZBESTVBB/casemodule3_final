package services;

import dao.UserDAO;
import models.User;

import java.sql.SQLException;
import java.util.List;

public class Check {
    private static Check instance;
    private Check(){

    }
    public static Check getInstance(){
        if (instance == null) {
            instance = new Check();
        }
        return instance;
    }
    public boolean checkRegister(User user) throws SQLException, ClassNotFoundException {
        List<User> users = UserDAO.getInstance().findAll();
        for (User u : users) {
            if (u.getUsername().equals(user.getUsername()) || u.getEmail().equals(user.getEmail()) ||
                    u.getPhonenumber().equals(user.getPhonenumber())) {
                return false;
            }
        }
        return true;
    }
}
