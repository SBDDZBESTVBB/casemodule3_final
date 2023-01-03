package controllers;

import models.User;
import services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(urlPatterns = "/UserServlet")

public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action == null) {
            action = "";
        }
        try {
            switch (action){
                case "register":
                    requestDispatcher = req.getRequestDispatcher("/");
                    register(req,resp);
                    break;
                case "login" :
                    requestDispatcher = req.getRequestDispatcher("/");
                    login(req,resp);
                    break;
            }
            requestDispatcher.forward(req,resp);
        }catch (SQLException | ClassNotFoundException e){
            throw new RuntimeException(e);
        }

    }
    private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException, ClassNotFoundException {
        if (UserService.getInstance().create(request)) {
            request.setAttribute("regMess", "Register successfully");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("regMess", "Username / Email / Phone number exist");
            RequestDispatcher dispatcher = request.getRequestDispatcher("");
            dispatcher.forward(request, response);
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
        User user = UserService.getInstance().loginCheck(request);
        if (user != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);
            if (user.equals("user")) {
                response.sendRedirect("/main.jsp");
            }

        } else {
            request.setAttribute("logMess", "Wrong username / email or password");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/");
            dispatcher.forward(request, response);
        }
    }
}



