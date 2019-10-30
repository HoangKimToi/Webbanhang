/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import CSDL.tbsanpham;
import Models.Cart;
import Models.Item;
import Models.clsSanpham;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hoàng Kim Tới
 */
public class CartServlet extends HttpServlet {

    private final tbsanpham tbsanpham = new tbsanpham();
    private clsSanpham product;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String masp = request.getParameter("masp");
        Cart cart = (Cart) session.getAttribute("cart");
        try {
            int maSP = Integer.parseInt(masp);
            clsSanpham clsSanpham = tbsanpham.LaySP(maSP);
            switch(command){
                case "plus":
                    if (cart.getCartItems().containsKey(maSP)){
                        cart.plustToCart(maSP, new Item(clsSanpham, cart.getCartItems().get(maSP).getQuatity()));
                    }else{
                        cart.plustToCart(maSP, new Item(clsSanpham, 1));
                    }
                    break;
                case "remove":
                    cart.removeToCart(maSP);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("/WebBanDT/index.jsp");
        }
        
        session.setAttribute("cart", cart);
        response.sendRedirect("/WebBanDT/index.jsp");
    }

}
