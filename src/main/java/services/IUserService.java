package services;

import models.User;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public interface IUserService extends IService<User> {
    User loginCheck(HttpServletRequest request) throws SQLException;
}
