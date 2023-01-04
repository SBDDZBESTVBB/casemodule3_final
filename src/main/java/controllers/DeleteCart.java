package controllers;

import models.Cartdetail;
import models.oder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DeleteCart", value = "/DeleteCart")
public class DeleteCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String productname =  request.getParameter("productname");

        ArrayList<Cartdetail> cartdetails = (ArrayList<Cartdetail>) session.getAttribute("cartdetails");
        for (int i = 0; i < cartdetails.size(); i++) {
            if (cartdetails.get(i).getProductname().equals(productname))
                cartdetails.remove(i);
        }
        session.setAttribute("cartdetails",cartdetails);
        request.setAttribute("cartdetails",cartdetails);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cart-detail.jsp");
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String productname =  request.getParameter("productname");

        ArrayList<Cartdetail> cartdetails = (ArrayList<Cartdetail>) session.getAttribute("cartdetails");
        for (int i = 0; i < cartdetails.size(); i++) {
           if (cartdetails.get(i).getProductname().equals(productname))
               cartdetails.remove(i);
        }
        double sum=0;
        for (int i = 0; i < cartdetails.size(); i++) {
            sum = sum+ cartdetails.get(i).getAmount()*cartdetails.get(i).getPrice();
        }
        session.setAttribute("cartdetails",cartdetails);
        request.setAttribute("cartdetails",cartdetails);
        request.setAttribute("sum",sum);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cart-detail.jsp");
        dispatcher.forward(request,response);
    }
}
