<%-- 
    Document   : thanhtoan
    Created on : Mar 15, 2019, 11:03:43 AM
    Author     : Hoàng Kim Tới
--%>
<%@page import="Models.clsUser"%>
<%@page import="Models.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section class="main-container col1-layout">
    <div class="main container">
      <div class="col-main">
        <div class="cart wow">
          <div class="cart-collaterals row">
            <div class="col-sm-4">
              <div class="shipping">
                <h3>Estimate Shipping and Tax</h3>
                <div class="shipping-form">
                    
                  <form id="shipping-zip-form" method="post" action="HoaDonServlet">
                    <p>Enter your destination to get a shipping estimate.</p>
                    <ul class="form-list">
                      <li>
                        <label class="required" for="country"><em>*</em>Address</label>
                        <div class="input-box">
                            <input type="text" name="address" class="input-text fullwidth">
                        </div>
                      </li>
                      <li>
                        <label for="region_id">Payment</label>
                        <div class="input-box">
                          <select style="" title="Payment" name="payment" id="payment" defaultvalue="" class="required-entry validate-select">
                            <option value="">Please select payment</option>
                            <option value="Bank transfer" title="Bank transfer">Bank transfer</option>
                            <option value="Live" title="Live">Live</option>
                          </select>
                          <input type="text" style="display:none;" class="input-text required-entry" title="State/Province" value="" name="region" id="region">
                        </div>
                      </li>
                    </ul>                   
                        <button class="button btn-proceed-checkout" title="Proceed to Checkout" type="submit"><span>Thanh Toán ngay</span></button>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="discount">
                <h3>Discount Codes</h3>
                <form method="post" action="#couponPost/" id="discount-coupon-form">
                  <label for="coupon_code">Enter your coupon code if you have one.</label>
                  <input type="hidden" value="0" id="remove-coupone" name="remove">
                  <input type="text" value="" name="coupon_code" id="coupon_code" class="input-text fullwidth">
                  <button value="Apply Coupon" onclick="discountForm.submit(false)" class="button coupon " title="Apply Coupon" type="button"><span>Apply Coupon</span></button>
                </form>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </div>
  </section>
