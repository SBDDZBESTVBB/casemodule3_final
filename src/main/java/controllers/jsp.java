package controllers;

import models.Cartdetail;
import models.User;
import models.oderdetail;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "index.jsp", value = "/index.jsp")
public class jsp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
//        User user = new User(1,"aa","aaaa");
        ArrayList<Cartdetail> cartdetails = new ArrayList<>();
//        session.setAttribute("user",user);
        session.setAttribute("cartdetails",cartdetails);
response.sendRedirect("/home.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
