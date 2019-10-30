<%-- 
    Document   : main
    Created on : Feb 20, 2019, 2:56:37 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="Models.Cart"%>
<%@page import="Models.clsSanpham"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbsanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="main-container col1-layout home-content-container">
    <div class="container">
      <div class="row">
        <div class="std">
          <div class="col-lg-8 col-xs-12 col-sm-8 best-seller-pro wow">
            <div class="slider-items-products">
              <div class="new_title center">
                <h2>Sản phẩm bán chạy</h2>
              </div>
              <div id="best-seller-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col4"> 
                    <%
                        tbsanpham sanpham = new tbsanpham();
                        Vector<clsSanpham> dsSP = sanpham.LayDSSP();
                        
                    %>
                    <%
                        for(clsSanpham sp : dsSP){
                    %>
                  <!-- Item -->
                  <div class="item">
                    <div class="col-item">
                        <%
                            if (sp.getSukien().equals("New")) {
                                   
                        %>
                            <div class="new-label new-top-right">New</div>
                        <%
                            }else if(sp.getSukien().equals("sale")){
                        %>
                            <div class="sale-label sale-top-right">Sale</div>
                        <%
                            }
                        %>
                        <div class="images-container"> <a class="product-image" title="Sample Product" href="product_detail.jsp?masp=<%=sp.getMasp()%>"> <img src="products-images/<%=sp.getAnh()%>" class="img-responsive" alt="product-image" /> </a>
                        <div class="actions">
                          <div class="actions-inner">
                              <a href="CartServlet?command=plus&masp=<%=sp.getMasp()%>">
                                  <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                              </a>
                            <ul class="add-to-links">
                              <li><a href="product_detail.jsp?masp=<%=sp.getMasp()%>" title="Add to Wishlist" class="link-wishlist"><span>Add to Wishlist</span></a></li>
                              <li><a href="product_detail.jsp?masp=<%=sp.getMasp()%>" title="Add to Compare" class="link-compare "><span>Add to Compare</span></a></li>
                            </ul>
                          </div>
                        </div>
                        <div class="qv-button-container"> <a href="product_detail.jsp?masp=<%=sp.getMasp()%>" class="qv-e-button btn-quickview-1"><span><span>Quick View</span></span></a> </div>
                      </div>
                      <div class="info">
                        <div class="info-inner">
                          <div class="item-title"> <a title=" Sample Product" href="product_detail.html"> <%=sp.getTensp()%> </a> </div>
                          <!--item-title-->
                          <div class="item-content">
                            <div class="ratings">
                              <div class="rating-box">
                                <div style="width:60%" class="rating"></div>
                              </div>
                            </div>
                            <div class="price-box">
                              <p class="special-price"> <span class="price"> <%=sp.getGia()%> đ</span> </p>
                            </div>
                          </div>
                          <!--item-content--> 
                        </div>
                        <!--info-inner--> 
                        
                        <!--actions-->
                        <div class="clearfix"> </div>
                      </div>
                    </div>
                  </div>
                  <%
                      }
                  %>
                  <!-- End Item --> 
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-xs-12 col-sm-4 wow latest-pro small-pr-slider">
            <div class="slider-items-products">
              <div class="new_title center">
                <h2>Sản phẩm mới nhất</h2>
              </div>
              <div id="latest-deals-slider" class="product-flexslider hidden-buttons latest-item">
                <div class="slider-items slider-width-col4"> 
                    <%
                        Vector<clsSanpham> SPNew = sanpham.SPNew("New");
                        for(clsSanpham sp : SPNew){
                    %>
                  <!-- Item -->
                  <div class="item">
                    <div class="col-item">
                      <div class="images-container"> <a class="product-image" title="Sample Product" href="product_detail.jsp?masp=<%=sp.getMasp()%>"> <img src="products-images/<%=sp.getAnh()%>" class="img-responsive" alt="product-image" /> </a>
                        <div class="actions">
                          <div class="actions-inner">
                            <ul class="add-to-links">
                              <li><a href="product_detail.jsp?masp=<%=sp.getMasp()%>" title="Add to Wishlist" class="link-wishlist"><span>Add to Wishlist</span></a></li>
                              <li><a href="product_detail.jsp?masp=<%=sp.getMasp()%>" title="Add to Compare" class="link-compare "><span>Add to Compare</span></a></li>
                            </ul>
                          </div>
                        </div>
                        <div class="qv-button-container"> <a href="product_detail.jsp?masp=<%=sp.getMasp()%>" class="qv-e-button btn-quickview-1"><span><span>Quick View</span></span></a> </div>
                      </div>
                      <div class="info">
                        <div class="info-inner">
                          <div class="item-title"> <a title=" Sample Product" href="product_detail.html"> <%=sp.getTensp()%> </a> </div>
                          <!--item-title-->
                          <div class="item-content">
                            <div class="ratings">
                              <div class="rating-box">
                                <div style="width:60%" class="rating"></div>
                              </div>
                            </div>
                            <div class="price-box">
                              
                              <p class="special-price"> <span class="price-sep">-</span> <span class="price"> <%=sp.getGia()%> đ </span> </p>
                            </div>
                          </div>
                          <!--item-content--> 
                        </div>
                        <!--info-inner-->
                        <div class="actions">
                            <a href="CartServlet?command=plus&masp=<%=sp.getMasp()%>">
                                <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                            </a>
                        </div>
                        <!--actions-->
                        <div class="clearfix"> </div>
                      </div>
                    </div>
                  </div>
                  <!-- End Item -->
                  <%
                      }
                  %>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
