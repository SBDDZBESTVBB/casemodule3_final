package controllers;

import dao.ProductDAO;
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
        ArrayList<Cartdetail> cartdetails = new ArrayList<>();
        session.setAttribute("cartdetails",cartdetails);
        request.setAttribute("products", ProductDAO.getAll());
        response.sendRedirect("/home.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
