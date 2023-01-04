package controllers;

import models.Cartdetail;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Addtocart", value = "/Addtocart")
public class Addtocart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productname = request.getParameter("productname");
        String size = request.getParameter("size");
        int amount = Integer.parseInt(request.getParameter("amount"));
        double price = Double.parseDouble(request.getParameter("price"));
        double totalcart = amount*price;
        HttpSession session = request.getSession();
        ArrayList<Cartdetail> cartdetails = (ArrayList<Cartdetail>) session.getAttribute("cartdetails");
        cartdetails.add(new Cartdetail(productname, size, amount, price, totalcart));
        session.setAttribute("cartdetails",cartdetails);
        request.setAttribute("cardetails",cartdetails);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cart-detail.jsp");
        dispatcher.forward(request,response);
    }
}
