<%-- 
    Document   : timkiem
    Created on : Mar 16, 2019, 2:06:13 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="java.util.Map"%>
<%@page import="Models.Item"%>
<%@page import="Models.clsSanpham"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbsanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="page">  
  <!-- Two columns content -->
  <section class="main-container col2-left-layout">
    <div class="main container">
      <div class="row">
        <section class="col-main col-sm-9 col-sm-push-3 wow">
          <div class="category-products">
            <div class="toolbar">
              <div class="sorter">
                <div class="view-mode"> <span title="Grid" class="button button-active button-grid">Grid</span><a href="list.html" title="List" class="button button-list">List</a> </div>
              </div>
              <div id="sort-by">
                <label class="left">Sort By: </label>
                <ul>
                  <li><a href="#">Position<span class="right-arrow"></span></a>
                    <ul>
                      <li><a href="#">Name</a></li>
                      <li><a href="#">Price</a></li>
                      <li><a href="#">Position</a></li>
                    </ul>
                  </li>
                </ul>
                <a class="button-asc left" href="#" title="Set Descending Direction"><span style="color:#999;font-size:11px;" class="glyphicon glyphicon-arrow-up"></span></a> </div>
              <div class="pager">
                <div id="limiter">
                  <label>View: </label>
                  <ul>
                    <li><a href="#">15<span class="right-arrow"></span></a>
                      <ul>
                        <li><a href="#">20</a></li>
                        <li><a href="#">30</a></li>
                        <li><a href="#">35</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
                <div class="pages">
                  <label>Page:</label>
                  <ul class="pagination">
                    <li><a href="#">&laquo;</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <ul class="products-grid">
                <%
                    request.setCharacterEncoding("UTF-8");
                    String search = request.getParameter("search");
                    tbsanpham sanpham = new tbsanpham();                   
                    Vector<clsSanpham> dsSP = sanpham.TimKiemSP(search);
                    for (clsSanpham sp : dsSP) {
                %>
                <li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
                    <div class="col-item">
                        <%
                            if (sp.getSukien().equals("New")) {

                        %>
                        <div class="new-label new-top-right">New</div>
                        <%                        } else if (sp.getSukien().equals("sale")) {
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
              </li>
              <%
                  }
              %>
            </ul>
          </div>
        </section>
        <aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9 wow">
          <div class="side-nav-categories">
          </div>
          <div class="block block-cart">
            <div class="block-title"><span>My Cart</span></div>
            <div class="block-content">
              <div class="summary">
                <p class="amount">There are <a href="#"><%=cart.countItem()%> items</a> in your cart.</p>
                <p class="subtotal"> <span class="label">Cart Subtotal:</span> <span class="price"><%=cart.totalCart()%> đ</span> </p>
              </div>
              <div class="ajax-checkout">
                  <button type="button" title="Submit" class="button button-checkout"><span>Checkout</span></button>
              </div>
              <p class="block-subtitle">Recently added item(s) </p>
              <%
                  for (Map.Entry<Integer, Item> list : cart.getCartItems().entrySet()) {

              %>
              <ul>
                <li class="item"> <a class="product-image" title="Fisher-Price Bubble Mower" href="#"><img width="80" alt="Fisher-Price Bubble Mower" src="products-images/<%=list.getValue().getProduct().getAnh()%>"></a>
                  <div class="product-details">
                    <div class="access"> <a class="btn-remove1" title="Remove This Item" href="CartServlet?command=remove&masp=<%=list.getValue().getProduct().getMasp()%>"> <span class="icon"></span> Remove </a> </div>
                    <p class="product-name"> <a href="#"><%=list.getValue().getProduct().getTensp()%></a> </p>
                    <strong><%=list.getValue().getQuatity()%></strong> x <span class="price"><%=list.getValue().getProduct().getGia()%> đ</span> </div>
                </li>
              </ul>
              <%
                  }
              %>
            </div>
          </div>
          <div class="block block-compare">
            <div class="block-title "><span>Compare Products (2)</span></div>
            <div class="block-content">
              <ol id="compare-items">
                <li class="item odd">
                  <input type="hidden" class="compare-item-id" value="2173">
                  <a href="#" title="Remove This Item" class="btn-remove1"></a> <a class="product-name" href="#"> Sofa with Box-Edge Polyester Wrapped Cushions</a> </li>
                <li class="item last even">
                  <input type="hidden" class="compare-item-id" value="2174">
                  <a href="#" title="Remove This Item" class="btn-remove1"></a> <a class="product-name" href="#"> Sofa with Box-Edge Down-Blend Wrapped Cushions</a> </li>
              </ol>
              <div class="ajax-checkout">
                <button class="button button-compare" title="Submit" type="submit"><span>Compare</span></button>
                <button class="button button-clear" title="Submit" type="submit"><span>Clear</span></button>
              </div>
            </div>
          </div>
          <div class="block block-list block-viewed">
            <div class="block-title"><span>Recently Viewed</span> </div>
            <div class="block-content">
              <ol id="recently-viewed-items">
                <li class="item odd">
                  <p class="product-name"><a href="#"> Armchair with Box-Edge Upholstered Arm</a></p>
                </li>
                <li class="item even">
                  <p class="product-name"><a href="#"> Pearce Upholstered Slee pere</a></p>
                </li>
                <li class="item last odd">
                  <p class="product-name"><a href="#"> Sofa with Box-Edge Down-Blend Wrapped Cushions</a></p>
                </li>
              </ol>
            </div>
          </div>
          <div class="block block-poll">
            <div class="block-title"><span>Community Poll</span> </div>
            <form onSubmit="return validatePollAnswerIsSelected();" method="post" action="#" id="pollForm">
              <div class="block-content">
                <p class="block-subtitle">What is your favorite Magento feature?</p>
                <ul id="poll-answers">
                  <li class="odd">
                    <input type="radio" value="5" id="vote_5" class="radio poll_vote" name="vote">
                    <span class="label">
                    <label for="vote_5">Layered Navigation</label>
                    </span> </li>
                  <li class="even">
                    <input type="radio" value="6" id="vote_6" class="radio poll_vote" name="vote">
                    <span class="label">
                    <label for="vote_6">Price Rules</label>
                    </span> </li>
                  <li class="odd">
                    <input type="radio" value="7" id="vote_7" class="radio poll_vote" name="vote">
                    <span class="label">
                    <label for="vote_7">Category Management</label>
                    </span> </li>
                  <li class="last even">
                    <input type="radio" value="8" id="vote_8" class="radio poll_vote" name="vote">
                    <span class="label">
                    <label for="vote_8">Compare Products</label>
                    </span> </li>
                </ul>
                <div class="actions">
                  <button class="button button-vote" title="Vote" type="submit"><span>Vote</span></button>
                </div>
              </div>
            </form>
          </div>
        </aside>
      </div>
    </div>
  </section>
  <!-- End Two columns content -->
</div>
