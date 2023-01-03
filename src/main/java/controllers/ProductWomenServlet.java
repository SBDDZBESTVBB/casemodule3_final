package controllers;

import models.Product;
import services.ProductService;
import services.ProductWomenService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/ProductWomenServlet")
public class ProductWomenServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "shirtwomen":
                req.setAttribute("shirts", ProductWomenService.getAllWomenShirt());
                requestDispatcher = req.getRequestDispatcher("/view-shirt-women-tuan.jsp");
                break;
            case "coatwomen":
                req.setAttribute("coat",ProductWomenService.getAllWomenCoat());
                requestDispatcher = req.getRequestDispatcher("/view-coat-women-tuan.jsp");
                break;
            case "jeanswomen":
                req.setAttribute("jeans",ProductWomenService.getAllWomenJeans());
                requestDispatcher = req.getRequestDispatcher("/view-jeans-women-tuan.jsp");
                break;
            case "dresswomen":
                req.setAttribute("dress",ProductWomenService.getAllWomenDress());
                requestDispatcher = req.getRequestDispatcher("/view-dress-women-tuan.jsp");
                break;
        }
        requestDispatcher.forward(req,resp);
    }
}
