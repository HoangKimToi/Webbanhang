<%-- 
    Document   : giohang
    Created on : Mar 13, 2019, 2:24:25 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="CSDL.tbUser"%>
<%@page import="java.util.Map"%>
<%@page import="Models.Item"%>
<%@page import="Models.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (username==null) {
            response.sendRedirect("/WebBanDT/index.jsp?module=login");
        }
%>
<section class="main-container col1-layout">
    <div class="main container">
      <div class="col-main">
        <div class="cart wow">
          <div class="page-title">
            <h2>Shopping Cart</h2>
          </div>
          <div class="table-responsive">
            <form method="post" action="UpdateCart.jsp">
              <input type="hidden" value="Vwww7itR3zQFe86m" name="form_key">
              <fieldset>
                  <%
                      if(cart.countItem()<=0)
                      {
                       out.println("<h3>Chưa có sản phẩm nào trong giỏ hàng</h3>");
                      }
                      else{
                 %>
                <table class="data-table cart-table" id="shopping-cart-table">
                  <colgroup>
                  <col width="1">
                  <col>
                  <col width="1">
                  <col width="1">
                  <col width="1">
                  <col width="1">
                  <col width="1">
                  </colgroup>
                  <thead>
                    <tr class="first last">
                      <th rowspan="1">&nbsp;</th>
                      <th rowspan="1"><span class="nobr">Product Name</span></th>
                      <th rowspan="1"></th>
                      <th colspan="1" class="a-center"><span class="nobr">Unit Price</span></th>
                      <th class="a-center" rowspan="1">Qty</th>
                      <th class="a-center" rowspan="1">&nbsp;</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr class="first last">
                      <td class="a-right last" colspan="50">
                          <a href="/WebBanDT/index.jsp">
                              <button onclick="setLocation('#')" class="button btn-continue" title="Continue Shopping" type="button"><span><span>Continue Shopping</span></span></button>
                          </a>
                          <a href="UpdateCart.jsp">
                              <button class="button btn-update" title="Update Cart" value="update_qty" name="update_cart_action" type="submit"><span><span>Update Cart</span></span></button>
                          </a>
                        <button id="empty_cart_button" class="button btn-empty" title="Clear Cart" value="empty_cart" name="update_cart_action" type="submit"><span><span>Clear Cart</span></span></button></td>
                    </tr>
                  </tfoot>
                  <tbody>
                      <%
                         for (Map.Entry<Integer, Item> list : cart.getCartItems().entrySet()) {
                      %>
                    <tr class="first odd">
                      <td class="image"><a class="product-image" title="Sample Product" href="#/women-s-crepe-printed-black/"><img width="75" alt="Sample Product" src="products-images/<%=list.getValue().getProduct().getAnh()%>"></a></td>
                      <td><h2 class="product-name"> <a href="#/women-s-crepe-printed-black/"><%=list.getValue().getProduct().getTensp()%></a> </h2></td>
                      <td class="a-center"><a title="Edit item parameters" class="edit-bnt" href="#configure/id/15945/"></a></td>
                      <td class="a-right"><span class="cart-price"> <span class="price"><%=list.getValue().getProduct().getGia()%></span> </span></td>
                      <td class="a-center movewishlist"><input maxlength="12" class="input-text qty" title="Qty" size="4" value="<%=list.getValue().getQuatity()%>" name="sanpham_<%=list.getValue().getProduct().getMasp()%>"></td>
                      <!--<td class="a-right movewishlist"><span class="cart-price"> <span class="price">3</span> </span></td>-->
                      <td class="a-center last"><a class="button remove-item" title="Remove item" href="CartServlet?command=remove&masp=<%=list.getValue().getProduct().getMasp()%>"><span><span>Remove item</span></span></a></td>
                    </tr>
                    <%
                        }
                    %>
                  </tbody>
                </table>
                    
                  <%
                    }                  
                  %>
              </fieldset>
            </form>
          </div>
          <!-- BEGIN CART COLLATERALS -->
          <div class="cart-collaterals row">
            <div class="col-sm-4">
              <div class="shipping">
                <div class="shipping-form">
                    <a href="index.jsp?module=thanhtoan">
                        <button class="button btn-proceed-checkout" title="Proceed to Checkout" type="button"><span>Thanh Toán</span></button>
                    </a>
                </div>
              </div>
            </div>
            <div class="col-sm-4">
            </div>
            <div class="totals col-sm-4">
              <h3>Shopping Cart Total</h3>
              <div class="inner">
                <table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
                  <colgroup>
                  <col>
                  <col width="1">
                  </colgroup>
                  <tfoot>
                    <tr>
                      <td colspan="1" class="a-left" style=""><strong>Grand Total</strong></td>
                      <td class="a-right" style=""><strong><span class="price"><%=cart.totalCart()%> đ</span></strong></td>
                    </tr>
                  </tfoot>
                  <tbody>
                    <tr>
                      <td colspan="1" class="a-left" style=""> Subtotal </td>
                      <td class="a-right" style=""><span class="price"><%=cart.totalCart()%> đ</span></td>
                    </tr>
                  </tbody>
                </table>
                <ul class="checkout">
                </ul>
              </div>
              <!--inner--> 
              
            </div>
          </div>
          
          <!--cart-collaterals--> 
          
        </div>
      </div>
    </div>
  </section>
