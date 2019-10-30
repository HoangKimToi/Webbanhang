<%-- 
    Document   : UpdateCart
    Created on : Mar 20, 2019, 8:24:29 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="CSDL.tbsanpham"%>
<%@page import="Models.clsSanpham"%>
<%@page import="java.util.Map"%>
<%@page import="Models.Item"%>
<%@page import="Models.Cart"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            Cart cart_update = (Cart) session.getAttribute("cart");
             for (Map.Entry<Integer, Item> list : cart_update.getCartItems().entrySet()) {
               
               int maSP = list.getValue().getProduct().getMasp();
                
                String str_soluong = request.getParameter("sanpham_" + maSP);
                int soluong = Integer.parseInt(str_soluong);
                
                tbsanpham tbsanpham = new tbsanpham();
                clsSanpham clsSanpham = tbsanpham.LaySP(maSP);
                cart_update.updateToCart(maSP, new Item(clsSanpham,soluong));
                //cart.put(id, soluong);
            }
            session.setAttribute("cart", cart_update);
            response.sendRedirect("/WebBanDT/index.jsp?module=giohang");
        %>
    </body>
</html>
