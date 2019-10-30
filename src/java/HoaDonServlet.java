/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import CSDL.tbChitiethoadon;
import CSDL.tbHoadon;
import Models.Cart;
import Models.Item;
import Models.clsChitiethoadon;
import Models.clsHoadon;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hoàng Kim Tới
 */
public class HoaDonServlet extends HttpServlet {
    private final tbHoadon tbhoadon= new tbHoadon();
    private final tbChitiethoadon chitiet= new tbChitiethoadon();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String payment = request.getParameter("payment");
        String address = request.getParameter("address");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        String user = (String) session.getAttribute("username");
        try {
            long ID = new Date().getTime();
            clsHoadon hoadon = new clsHoadon();
            hoadon.setBillID(ID);
            hoadon.setUsername(user);
            hoadon.setTotal(cart.totalCart());
            hoadon.setPayment(payment);
            hoadon.setAddress(address);
            hoadon.setDate(new Timestamp(new Date().getTime()));
            tbhoadon.ThemHD(hoadon);
            for (Map.Entry<Integer, Item> list : cart.getCartItems().entrySet()) {
                chitiet.ThemCTHD(new clsChitiethoadon(0, ID, 
                        list.getValue().getProduct().getMasp(),
                        list.getValue().getProduct().getGia(),
                        list.getValue().getQuatity()));
            }
            cart = new Cart();
            session.setAttribute("cart", cart);
        } catch (Exception e) {
        }
        response.sendRedirect("/WebBanDT/index.jsp");
    }


}
