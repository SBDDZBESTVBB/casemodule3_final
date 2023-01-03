package controllers;

import models.oderdetail;
import models.user;

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
        user user = new user();
        ArrayList<oderdetail> oderdetails = new ArrayList<>();
        session.setAttribute("user",user);
        session.setAttribute("oderdetail",oderdetails);
response.sendRedirect("/home.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
