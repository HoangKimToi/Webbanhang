<%-- 
    Document   : ND-lv2
    Created on : Feb 20, 2019, 3:04:08 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="Models.clsSanpham"%>
<%@page import="CSDL.tbsanpham"%>
<%@page import="java.util.Vector"%>
<%@page import="Models.clsPhukien"%>
<%@page import="CSDL.tbphukien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="recommend container">
    <div class="new-pro-slider small-pr-slider" style="overflow:visible">
      <div class="slider-items-products">
        <div class="new_title center">
          <h2>Phụ kiện</h2>
        </div>
        <div id="recommend-slider" class="product-flexslider hidden-buttons">
          <div class="slider-items slider-width-col3"> 
            <!-- Item -->
            <%
                tbsanpham phukien = new tbsanpham();
                Vector<clsSanpham> dsPK = phukien.LayPK(1);
                for(clsSanpham pk : dsPK){
            %>
            <div class="item">
              <div class="col-item">
                    <%
                        if (pk.getSukien().equals("New")) {
                                   
                    %>
                        <div class="new-label new-top-right">New</div>
                    <%
                        }else if(pk.getSukien().equals("sale")){
                    %>
                        <div class="sale-label sale-top-right">Sale</div>
                    <%
                        }
                    %>
                  <div class="images-container"> <a class="product-image" title="Sample Product" href="Phukien_detail.jsp?maphukien=<%=pk.getMasp()%>"> <img src="products-images/<%=pk.getAnh()%>" class="img-responsive" alt="a" /> </a>
                  <div class="actions">
                    <div class="actions-inner">
                      <ul class="add-to-links">
                        <li><a href="Phukien_detail.jsp?maphukien=<%=pk.getMasp()%>" title="Add to Wishlist" class="link-wishlist"><span>Add to Wishlist</span></a></li>
                        <li><a href="Phukien_detail.jsp?maphukien=<%=pk.getMasp()%>" title="Add to Compare" class="link-compare "><span>Add to Compare</span></a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="qv-button-container"> <a href="Phukien_detail.jsp?maphukien=<%=pk.getMasp()%>" class="qv-e-button btn-quickview-1"><span><span>Quick View</span></span></a> </div>
                </div>
                <div class="info">
                  <div class="info-inner">
                    <div class="item-title"> <a title=" Sample Product" href="Phukien_detail.jsp?maphukien=<%=pk.getMasp()%>"> <%=pk.getTensp()%> </a> </div>
                    <!--item-title-->
                    <div class="item-content">
                      <div class="ratings">
                        <div class="rating-box">
                          <div style="width:60%" class="rating"></div>
                        </div>
                      </div>
                      <div class="price-box">
                        <p class="special-price"> <span class="price"> <%=pk.getGia()%> đ</span> </p>
                        <!--<p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>-->
                      </div>
                    </div>
                    <!--item-content--> 
                  </div>
                  <!--info-inner-->
                  <div class="actions">
                      <a href="CartServlet?command=plus&masp=<%=pk.getMasp()%>">
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
  </section>
