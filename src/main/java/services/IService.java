package services;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.sql.SQLException;

public interface IService <E>{
    boolean create(HttpServletRequest request) throws ServletException, IOException, SQLException, ClassNotFoundException;

}
