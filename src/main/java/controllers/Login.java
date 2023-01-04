package controllers;

import dao.UserDAO;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserDAO userDAO = new UserDAO();
        User user = userDAO.login(username,password);
        if (user == null) {
            req.setAttribute("mess","Wrong username or password");
            req.getRequestDispatcher("loginmodal.jsp").forward(req,resp);
        }else if (user.getRole().equals("admin")){
            resp.sendRedirect("/AdminProductServlet?action=show");
            HttpSession session = req.getSession();
            session.setAttribute("user",user);
        }else {
            HttpSession session = req.getSession();
            session.setAttribute("user",user);
            session.setMaxInactiveInterval(30);
            resp.sendRedirect("home.jsp");
        }
    }
}