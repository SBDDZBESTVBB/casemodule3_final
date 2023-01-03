//package services;
//
//public class UserService {
//import dao.UserDAO;
//import models.User;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import java.io.IOException;
//import java.sql.SQLException;
//import java.util.List;
//
//public class UserService implements IUserService {
//    private static UserService instance;
//    public static UserService getInstance() {
//        if (instance == null) {
//            instance = new UserService();
//        }
//        return instance;
//    }
//
//
//    @Override
//    public boolean create(HttpServletRequest request) throws ServletException, IOException, SQLException, ClassNotFoundException {
//        User user = getObject(request);
//        if (Check.getInstance().checkRegister(user)) {
//            UserDAO.getInstance().insert(user);
//            return true;
//        }
//        return false;
//
//    }
//
//    @Override
//    public User loginCheck(HttpServletRequest request) throws SQLException {
//        return null;
//    }
//
//    public User getObject(HttpServletRequest request) throws SQLException, ClassNotFoundException {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        String phonenumber = request.getParameter("phonenumber");
//        String email = request.getParameter("email");
//        String address = request.getParameter("address");
//        List<User> users = UserDAO.getInstance().findAll();
//        int iduser = users.get(users.size() - 1).getIduser() + 1;
//        return new User(iduser, username, password, phonenumber, email, address);
//    }
//}
