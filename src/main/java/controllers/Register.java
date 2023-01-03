package controllers;

import dao.UserDAO;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/Register")

public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String repeatpassword = req.getParameter("repeatpassword");
        if (!password.equals(repeatpassword)){
            resp.sendRedirect("loginmodal.jsp");
        }else {
            UserDAO userDAO = new UserDAO();
            User user = userDAO.checkUser(username);
            if (user==null){
                userDAO.register(username,password);
                resp.sendRedirect("index");

            }else {
                resp.sendRedirect("loginmodal.jsp");
            }
        }


    }
}
