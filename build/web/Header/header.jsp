<%-- 
    Document   : header
    Created on : Feb 20, 2019, 2:26:24 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="Models.Item"%>
<%@page import="java.util.Map"%>
<%@page import="Models.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header-container">
    <div class="header container">
      <div class="row">
        <div class="col-lg-2 col-sm-3 col-md-2 col-xs-12"> 
          <!-- Header Logo --> 
          <a class="logo" title="Magento Commerce" href="index.jsp"><img alt="Magento Commerce" src="images/logo.png"></a> 
          <!-- End Header Logo --> 
        </div>
        <div class="col-lg-7 col-sm-4 col-md-6 col-xs-12"> 
          <!-- Search-col -->
          <div class="search-box">
            <form action="index.jsp?module=timkiem" method="POST" id="search_mini_form" name="Categories">
              <select name="category_id" class="cate-dropdown hidden-xs">
                <option value="0">All Categories</option>
                <option value="36">Điện thoại</option>
                <option value="37">Phụ kiện</option>
              </select>
              <input type="text" placeholder="Search here..." value="" maxlength="70" class="" name="search" id="search">
                  <button id="submit-button" class="search-btn-bg"><span>Search</span></button>
            </form>
          </div>
          <!-- End Search-col --> 
        </div>
        <!-- Top Cart -->
        <div class="col-lg-3 col-sm-5 col-md-4 col-xs-12">
            <%
                Cart cart = (Cart) session.getAttribute("cart");
                          if (cart == null) {
                              cart = new Cart();
                              session.setAttribute("cart", cart);
                          }
            %>
          <div class="top-cart-contain">
            <div class="mini-cart">
              <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="shopping_cart.html"> <i class="icon-cart"></i>
                <div class="cart-box"><span class="title">My Cart</span><span id="cart-total"><%=cart.countItem()%></span></div>
                </a></div>
              <div>
                <div class="top-cart-content arrow_box">
                  <div class="block-subtitle">Recently added item(s)</div>
                  <%
                      for (Map.Entry<Integer, Item> list : cart.getCartItems().entrySet()) {
                          
                  %>
                  <ul id="cart-sidebar" class="mini-products-list">
                    <li class="item even"> <a class="product-image" href="#" title="Downloadable Product "><img alt="Downloadable Product " src="products-images/<%=list.getValue().getProduct().getAnh()%>" width="80"></a>
                      <div class="detail-item">
                          <div class="product-details"> <a href="CartServlet?command=remove&masp=<%=list.getValue().getProduct().getMasp()%>" title="Remove This Item" onClick="" class="glyphicon glyphicon-remove">&nbsp;</a> <a class="glyphicon glyphicon-pencil" title="Edit item" href="#">&nbsp;</a>
                            <p class="product-name"> <a href="#" title="Downloadable Product"></a><%=list.getValue().getProduct().getTensp()%></p>
                        </div>
                        <div class="product-details-bottom"> <span class="price"><%=list.getValue().getProduct().getGia()%> đ</span> <span class="title-desc">Qty:</span> <strong><%=list.getValue().getQuatity()%></strong> </div>
                      </div>
                    </li>
                  </ul>
                            <%
                                }
                            %> 
                  <div class="top-subtotal">Subtotal: <span class="price"><%=cart.totalCart()%> đ</span></div>
                  <div class="actions">
                      <a href="index.jsp?module=giohang">
                          <button class="btn-checkout" type="button"><span>Checkout</span></button>
                      </a>
                      <a href="index.jsp?module=giohang">
                          <button class="view-cart" type="button"><span>View Cart</span></button>
                      </a>
                      
                  </div>                 
                </div>
              </div>
            </div>
            <div id="ajaxconfig_info" style="display:none"> <a href="#/"></a>
              <input value="" type="hidden">
              <input id="enable_module" value="1" type="hidden">
              <input class="effect_to_cart" value="1" type="hidden">
              <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
            </div>
          </div>
                  <%
                      String username = (String) session.getAttribute("username");
                      if (username == null) {
                  %>
                  <div class="signup"><a title="Login" href="index.jsp?module=login"><span>Sign up Now</span></a></div>
                  <span class="or"> | </span>
                  <div class="login"><a title="Login" href="index.jsp?module=login"><span>Log In</span></a></div>
                  <%
                  } else {
                  %>
                  <div class="signup"><a title="" href="logout.jsp"><span>Đăng xuất</span></a></div>
                  <span class="or"> | </span>
                  <div class="login"><a title="Login" href=""><span><%=username%></span></a></div>
                              <%
                                  }
                              %>
        </div>
        <!-- End Top Cart --> 
      </div>
    </div>
  </header>
