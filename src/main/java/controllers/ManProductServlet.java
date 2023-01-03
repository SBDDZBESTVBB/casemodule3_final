package controllers;

import models.Product;
import services.ManProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/ManProductServlet")
public class ManProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action == null) {
            action = "";
            if (request.getParameter("search")!= null) {
                action = "search";
            }
        }
        switch (action) {
            case "manshirt":
                request.setAttribute("shirt", ManProductService.getAllManShirt());
                requestDispatcher = request.getRequestDispatcher("/man-shirt-hoanh.jsp");
                break;
            case "mancoat":
                request.setAttribute("coat", ManProductService.getAllManCoat());
                requestDispatcher = request.getRequestDispatcher("/man-coat-hoanh.jsp");
                break;
            case "manjeans":
                request.setAttribute("jeans", ManProductService.getAllManJeans());
                requestDispatcher = request.getRequestDispatcher("/man-jeans-hoanh.jsp");
                break;
            case "manshort":
                request.setAttribute("short", ManProductService.getAllManShort());
                requestDispatcher = request.getRequestDispatcher("/man-short-hoanh.jsp");
                break;
            case "search":
                String search=request.getParameter("search");
                List<Product> product = ManProductService.getSearchProduct(search);
                request.setAttribute("search", product);
                requestDispatcher = request.getRequestDispatcher("/viewSearchManProductByName.jsp");
                break;
            default:
                break;
        }
        requestDispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


//        response.sendRedirect("/ManProductServlet");

    }
}
