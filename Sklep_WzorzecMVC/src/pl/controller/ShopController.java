package pl.controller;

import pl.businesslogic.PriceCalculator;
import pl.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/ShopController")
public class ShopController extends HttpServlet {

    double mean;
    double sum;
    private ArrayList<Product> products;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw = response.getWriter();
        products = new ArrayList<>();
        String productString1 = request.getParameter("product1");
        String productString2 = request.getParameter("product2");
        String productString3 = request.getParameter("product3");
        String productString4 = request.getParameter("product4");
        String productPrice1 = request.getParameter("price1");
        productPrice1 = productPrice1.replaceAll(",", ".");
        String productPrice2 = request.getParameter("price2");
        productPrice2 = productPrice2.replaceAll(",", ".");
        String productPrice3 = request.getParameter("price3");
        productPrice3 = productPrice3.replaceAll(",", ".");
        String productPrice4 = request.getParameter("price4");
        productPrice4 = productPrice4.replaceAll(",", ".");

        if (productPrice1 == "" || productPrice2 == "" || productPrice3 == "" || productPrice4 == "" ||
                productString1 == "" || productString2 == "" || productString3 == "" || productString4 == "") {
            response.sendRedirect("empty.jsp");
        } else {
            Product product1 = new Product(productString1, productPrice1);
            Product product2 = new Product(productString2, productPrice2);
            Product product3 = new Product(productString3, productPrice3);
            Product product4 = new Product(productString4, productPrice4);

            products.add(product1);
            products.add(product2);
            products.add(product3);
            products.add(product4);

            mean = PriceCalculator.calculateMean(products);
            sum = PriceCalculator.calculatePrice(products);

            request.setCharacterEncoding("UTF-8");
            request.setAttribute("products", products);
            request.setAttribute("sum", sum);
            request.setAttribute("mean", mean);
            request.getRequestDispatcher("summary.jsp").forward(request, response);
            response.setCharacterEncoding("UTF-8");
            response.sendRedirect("summary.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
