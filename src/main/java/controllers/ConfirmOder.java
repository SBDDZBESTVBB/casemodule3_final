package controllers;

import dao.OderDAO;
import dao.OderdetailDAO;
import dao.ProductDAO;
import models.Cartdetail;
import models.Product;
import models.User;
import models.oderdetail;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ConfirmOder", value = "/ConfirmOder")
public class ConfirmOder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        OderDAO.creatoderbyiduser(user.getIduser());
        int idoder = OderDAO.getlastidoder(user.getIduser());
        ArrayList<Cartdetail> cartdetails = (ArrayList<Cartdetail>) session.getAttribute("cartdetails");
        for (int i = 0; i < cartdetails.size(); i++) {
            String productname = cartdetails.get(i).getProductname();
            String size = cartdetails.get(i).getSize();
            Product product = ProductDAO.findproductbynameandsize(productname,size);
            Double totaloderdetail = product.getPrice()*cartdetails.get(i).getAmount();
            oderdetail oderdetail = new oderdetail(product.getIdproduct(),cartdetails.get(i).getAmount(),totaloderdetail,idoder);
            OderdetailDAO.save(oderdetail);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
