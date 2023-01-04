package controllers;

import models.Product;
import services.ManProductService;
import services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/AdminProductServlet")
public class AdminProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setAttribute("show", ProductService.getAll());
//        RequestDispatcher requestDispatcher=request.getRequestDispatcher("/admin.jsp");
//        requestDispatcher.forward(request,response);


        String action = request.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "show":
                request.setAttribute("show", ProductService.getAll());
                requestDispatcher = request.getRequestDispatcher("/admin.jsp");
                requestDispatcher.forward(request, response);
                break;
            case "delete":
                int id = Integer.parseInt(request.getParameter("id"));
                ProductService.deleteProduct(id);
                response.sendRedirect("/AdminProductServlet?action=show");
                break;
            case "edit":
                int idproduct = Integer.parseInt(request.getParameter("id"));
                Product product = ProductService.findProductById(idproduct);
                request.setAttribute("edit", product);
                requestDispatcher = request.getRequestDispatcher("/formEdit.jsp");
                requestDispatcher.forward(request, response);
                break;
            default:
                break;
        }

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        String category = request.getParameter("category");
        String productname = request.getParameter("name");
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        double price= Double.parseDouble(request.getParameter("price"));
        int amountproduct= Integer.parseInt(request.getParameter("amount"));
        String imgproduct = request.getParameter("img");
        String producttype = request.getParameter("type");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                ProductService.createProduct(new Product(category,producttype,productname,color,size,price,amountproduct,imgproduct));
                response.sendRedirect("/AdminProductServlet?action=show");
                break;
            case "edit":
                int id = Integer.parseInt(request.getParameter("id"));
                Product tmp = new Product(category,producttype,productname,color,size,price,amountproduct,imgproduct);
                tmp.setIdproduct(id);
                ProductService.editProduct(tmp);
                response.sendRedirect("/AdminProductServlet?action=show");
                break;
            default:
                break;
        }

    }
}