package com.example.case_module3_final.controllers;

import com.example.case_module3_final.services.ManProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/ManProductServlet")
public class ManProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher requestDispatcher = null;
        if (action == null) {
            action = "";
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
