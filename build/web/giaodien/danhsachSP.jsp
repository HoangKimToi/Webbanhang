<%-- 
    Document   : phukien
    Created on : Mar 10, 2019, 2:03:30 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="Models.clsSanpham"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbsanpham"%>
<%@page import="CSDL.tbsanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<div class="page">  
  <!-- Two columns content -->
  <section class="main-container col2-left-layout">
    <div class="main container">
      <div class="row">
        <section class="col-main col-sm-9 col-sm-push-3 wow">
          <div class="category-title">
            <h1>Tops &amp; Tees</h1>
          </div>
          <!-- category banner -->
          <div class="category-description std">
            <div class="slider-items-products">
              <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col1"> 
                  
                  <!-- Item -->
                  <div class="item"> <a href="#"><img alt="category-banner" src="images/category-banner-img.jpg"></a>
                    <div class="cat-img-title cat-bg cat-box">
                      <h2 class="cat-heading">New Fashion 2019</h2>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus diam arcu.</p>
                    </div>
                  </div>
                  <!-- End Item --> 
                  
                  <!-- Item -->
                  <div class="item"> <a href="#x"><img alt="category-banner" src="images/category-banner-img1.jpg"></a> </div>
                  <!-- End Item --> 
                  
                </div>
              </div>
            </div>
          </div>
          <!-- category banner -->
          <%
              tbsanpham sanpham = new tbsanpham();
                  Vector<clsSanpham> dsSP = sanpham.LayDSSP();
                  int mapk = 0;
                  int pages = 0, firstResult = 0, maxResult = 0, total = 0;
                  if (request.getParameter("pages") != null) {
                      pages = (int) Integer.parseInt(request.getParameter("pages"));
                  }
                  total = sanpham.countProductCategory(mapk);
                  if (total <= 9) {
                      firstResult = 0;
                      maxResult = total;
                  } else {
                      firstResult = (pages - 1) * 9;
                      maxResult = 9;
                  }
                  Vector<clsSanpham> ListProduct = sanpham.getListProductByNav(mapk, firstResult, maxResult);
          %>
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
                    <%
                        for(int i=1;i<=(total/9)+1;i++){
                    %>
                        <li class="active"><a href="index.jsp?module=danhsach&pages=<%=i%>"><%=i%></a></li>
                    <%
                        }
                    %>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <ul class="products-grid">
                <%
                    for (clsSanpham sp : ListProduct) {
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
            <div class="block-title"> Categories </div>
            <!--block-title--> 
            <!-- BEGIN BOX-CATEGORY -->
            <div class="box-content box-category">
              <ul>
                <li> <a class="active" href="#/women.html">Women</a> <span class="subDropdown minus"></span>
                  <ul class="level0_415" style="display:block">
                    <li> <a href="#/women/tops.html"> Tops </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/women/tops/evening-tops.html"> Evening Tops </a> </li>
                        <li> <a href="#/women/tops/shirts-blouses.html"> Shirts &amp; Blouses </a> </li>
                        <li> <a href="#/women/tops/tunics.html"> Tunics </a> </li>
                        <li> <a href="#/women/tops/vests.html"> Vests </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/women/bags.html"> Bags </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/women/bags/bags.html"> Bags </a> </li>
                        <li> <a href="#/women/bags/designer-handbags.html"> Designer Handbags </a> </li>
                        <li> <a href="#/women/bags/purses.html"> Purses </a> </li>
                        <li> <a href="#/women/bags/shoulder-bags.html"> Shoulder Bags </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/women/shoes.html"> Shoes </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/women/shoes/flat-shoes.html"> Flat Shoes </a> </li>
                        <li> <a href="#/women/shoes/flat-sandals.html"> Flat Sandals </a> </li>
                        <li> <a href="#/women/shoes/boots.html"> Boots </a> </li>
                        <li> <a href="#/women/shoes/heels.html"> Heels </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/women/Jewellery.html"> Jewellery </a>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/women/Jewellery/bracelets.html"> Bracelets </a> </li>
                        <li> <a href="#/women/Jewellery/necklaces-pendants.html"> Necklaces &amp; Pendants </a> </li>
                        <li> <a href="#/women/Jewellery/pins-brooches.html"> Pins &amp; Brooches </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/women/dresses.html"> Dresses </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/women/dresses/casual-dresses.html"> Casual Dresses </a> </li>
                        <li> <a href="#/women/dresses/evening.html"> Evening </a> </li>
                        <li> <a href="#/women/dresses/designer.html"> Designer </a> </li>
                        <li> <a href="#/women/dresses/party.html"> Party </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/women/lingerie.html"> Lingerie </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/women/lingerie/bras.html"> Bras </a> </li>
                        <li> <a href="#/women/lingerie/bodies.html"> Bodies </a> </li>
                        <li> <a href="#/women/lingerie/necklaces-pendants.html"> Lingerie Sets </a> </li>
                        <li> <a href="#/women/lingerie/shapewear.html"> Shapewear </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/women/jackets.html"> Jackets </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/women/jackets/coats.html"> Coats </a> </li>
                        <li> <a href="#/women/jackets/jackets.html"> Jackets </a> </li>
                        <li> <a href="#/women/jackets/leather-jackets.html"> Leather Jackets </a> </li>
                        <li> <a href="#/women/jackets/blazers.html"> Blazers </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/women/swimwear.html"> Swimwear </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/women/swimwear/swimsuits.html"> Swimsuits </a> </li>
                        <li> <a href="#/women/swimwear/beach-clothing.html"> Beach Clothing </a> </li>
                        <li> <a href="#/women/swimwear/bikinis.html"> Bikinis </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                  </ul>
                  <!--level0--> 
                </li>
                <!--level 0-->
                <li> <a href="#/men.html">Men</a> <span class="subDropdown plus"></span>
                  <ul class="level0_455" style="display:none">
                    <li> <a href="#/men/shoes.html"> Shoes </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/men/shoes/flat-shoes.html"> Flat Shoes </a> </li>
                        <li> <a href="#/men/shoes/boots.html"> Boots </a> </li>
                        <li> <a href="#/men/shoes/heels.html"> Heels </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/men/Jewellery.html"> Jewellery </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/men/Jewellery/bracelets.html"> Bracelets </a> </li>
                        <li> <a href="#/men/Jewellery/necklaces-pendants.html"> Necklaces &amp; Pendants </a> </li>
                        <li> <a href="#/men/Jewellery/pins-brooches.html"> Pins &amp; Brooches </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/men/dresses.html"> Dresses </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/men/dresses/casual-dresses.html"> Casual Dresses </a> </li>
                        <li> <a href="#/men/dresses/evening.html"> Evening </a> </li>
                        <li> <a href="#/men/dresses/designer.html"> Designer </a> </li>
                        <li> <a href="#/men/dresses/party.html"> Party </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/men/jackets.html"> Jackets </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/men/jackets/coats.html"> Coats </a> </li>
                        <li> <a href="#/men/jackets/jackets.html"> Jackets </a> </li>
                        <li> <a href="#/men/jackets/leather-jackets.html"> Leather Jackets </a> </li>
                        <li> <a href="#/men/jackets/blazers.html"> Blazers </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/men/swimwear.html"> Swimwear </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/men/swimwear/swimsuits.html"> Swimsuits </a> </li>
                        <li> <a href="#/men/swimwear/beach-clothing.html"> Beach Clothing </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                  </ul>
                  <!--level0--> 
                </li>
                <!--level 0-->
                <li> <a href="#.html">Electronics</a> <span class="subDropdown plus"></span>
                  <ul class="level0_482" style="display:none">
                    <li> <a href="#/smartphones.html"> Smartphones </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/smartphones/samsung.html"> Samsung </a> </li>
                        <li> <a href="#/smartphones/apple.html"> Apple </a> </li>
                        <li> <a href="#/smartphones/blackberry.html"> Blackberry </a> </li>
                        <li> <a href="#/smartphones/nokia.html"> Nokia </a> </li>
                        <li> <a href="#/smartphones/htc.html"> HTC </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/cameras.html"> Cameras </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/cameras/digital-cameras.html"> Digital Cameras </a> </li>
                        <li> <a href="#/cameras/camcorders.html"> Camcorders </a> </li>
                        <li> <a href="#/cameras/lenses.html"> Lenses </a> </li>
                        <li> <a href="#/cameras/filters.html"> Filters </a> </li>
                        <li> <a href="#/cameras/tripod.html"> Tripod </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                    <li> <a href="#/accesories.html"> Accesories </a> <span class="subDropdown plus"></span>
                      <ul class="level1" style="display:none">
                        <li> <a href="#/accesories/headsets.html"> HeadSets </a> </li>
                        <li> <a href="#/accesories/batteries.html"> Batteries </a> </li>
                        <li> <a href="#/accesories/screen-protectors.html"> Screen Protectors </a> </li>
                        <li> <a href="#/accesories/memory-cards.html"> Memory Cards </a> </li>
                        <li> <a href="#/accesories/cases.html"> Cases </a> </li>
                        <!--end for-each -->
                      </ul>
                      <!--level1--> 
                    </li>
                    <!--level1-->
                  </ul>
                  <!--level0--> 
                </li>
                <!--level 0-->
                <li> <a href="#/digital.html">Digital</a> </li>
                <!--level 0-->
                <li class="last"> <a href="#/fashion.html">Fashion</a> </li>
                <!--level 0-->
              </ul>
            </div>
            <!--box-content box-category--> 
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

