<%-- 
    Document   : index
    Created on : Feb 20, 2019, 1:20:51 PM
    Author     : Hoàng Kim Tới
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Web bán điện thoại</title>
<!-- Favicons Icon -->
<link rel="icon" href="http://demo.magikthemes.com/skin/frontend/base/default/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="http://demo.magikthemes.com/skin/frontend/base/default/favicon.ico" type="image/x-icon" />
<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS Style -->

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/revslider.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="css/owl.theme.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.css" type="text/css">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto:400,500,700' rel='stylesheet' type='text/css'>
</head>
<body class="cms-index-index">
    
<div class="page"> 
  <!-- Header -->
  <%@include file="Header/header.jsp" %>
  <!-- end header --> 
  <!-- Navbar -->
  <%@include file="Header/header-menu.jsp" %> 
  <!-- end nav --> 
  <!-- Slider -->
  
  <!-- end Slider --> 
  <%      
      String module = request.getParameter("module");
      if (module == null || module.equals("")) {
  %>
  <%@include file="Header/slider.jsp" %> 
  <!-- main container -->
  <%@include file="Noidung/ND-lv1.jsp" %> 
  <!-- End main container --> 

  <!-- recommend slider -->
  <%@include file="Noidung/ND-lv2.jsp" %> 
  <!-- End Recommend slider --> 
  <!-- middle slider -->
  <%@include file="Noidung/ND-lv4.jsp" %> 
  <!-- End middle slider -->   
  <!-- Featured Slider -->
  <%@include file="Noidung/ND-lv5.jsp" %> 
  <!-- End Featured Slider --> 
  <%  } else if (module.equals("login")) {
  %>
  <%@include file="giaodien/login.jsp" %> 
  <%
  } else if (module.equals("danhsach")) {
  %>
  <%@include file="giaodien/danhsachSP.jsp" %> 
  <%  } else if (module.equals("thongtin")) {
  %>
  <%@include file="giaodien/gioithieu.jsp" %> 
  <%
  } else if (module.equals("lienhe")) {
  %>
  <%@include file="giaodien/lienhe.jsp" %> 
  <%
      }else if(module.equals("giohang")){
  %>
       <%@include file="giaodien/giohang.jsp" %> 
   <%
       }else if(module.equals("thanhtoan")){
   %>
   <%@include file="giaodien/thanhtoan.jsp" %> 
   <%
       }else if (module.equals("timkiem")) {
   %>
   <%@include file="giaodien/timkiem.jsp" %> 
   <%
       }
   %>
  <!-- Footer -->
  <footer class="footer">
    <div class="brand-logo ">
        <div class="container">
        <div class="slider-items-products">
          <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
            <div class="slider-items slider-width-col6"> 
              <!-- Item -->
              <div class="item"> <a href="#x"><img src="images/b-logo1.png" alt="Image"></a> </div>
              <!-- End Item --> 
              <!-- Item -->
              <div class="item"> <a href="#x"><img src="images/b-logo2.png" alt="Image"></a> </div>
              <!-- End Item --> 
              <!-- Item -->
              <div class="item"> <a href="#x"><img src="images/b-logo3.png" alt="Image"></a> </div>
              <!-- End Item --> 
              <!-- Item -->
              <div class="item"> <a href="#x"><img src="images/b-logo4.png" alt="Image"></a> </div>
              <!-- End Item --> 
              <!-- Item -->
              <div class="item"> <a href="#x"><img src="images/b-logo5.png" alt="Image"></a> </div>
              <!-- End Item --> 
              <!-- Item -->
              <div class="item"> <a href="#x"><img src="images/b-logo6.png" alt="Image"></a> </div>
              <!-- End Item --> 
              <!-- Item -->
              <div class="item"> <a href="#x"><img src="images/b-logo1.png" alt="Image"></a> </div>
              <!-- End Item --> 
              <!-- Item -->
              <div class="item"> <a href="#x"><img src="images/b-logo4.png" alt="Image"></a> </div>
              <!-- End Item --> 
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-middle container">
        <div class="col-md-3 col-sm-4">
        <div class="footer-logo"><a href="index.html" title="Logo"><img src="images/footer-logo.png" alt="logo"></a></div>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus diam arcu. </p>
        <div class="payment-accept">
          <div><img src="images/payment-1.png" alt="payment"> <img src="images/payment-2.png" alt="payment"> <img src="images/payment-3.png" alt="payment"> <img src="images/payment-4.png" alt="payment"></div>
        </div>
      </div>
      <div class="col-md-2 col-sm-4">
        <h4>Shopping Guide</h4>
        <ul class="links">
          <li class="first"><a href="#" title="How to buy">How to buy</a></li>
          <li><a href="faq.html" title="FAQs">FAQs</a></li>
          <li><a href="#" title="Payment">Payment</a></li>
          <li><a href="#" title="Shipment&lt;/a&gt;">Shipment</a></li>
          <li><a href="delivery.html" title="delivery">Delivery</a></li>
          <li class="last"><a href="#" title="Return policy">Return policy</a></li>
        </ul>
      </div>
      <div class="col-md-2 col-sm-4">
        <h4>Style Advisor</h4>
        <ul class="links">
          <li class="first"><a title="Your Account" href="login.html">Your Account</a></li>
          <li><a title="Information" href="#">Information</a></li>
          <li><a title="Addresses" href="#">Addresses</a></li>
          <li><a title="Addresses" href="#">Discount</a></li>
          <li><a title="Orders History" href="#">Orders History</a></li>
          <li class="last"><a title=" Additional Information" href="#">Additional Information</a></li>
        </ul>
      </div>
      <div class="col-md-2 col-sm-4">
        <h4>Information</h4>
        <ul class="links">
          <li class="first"><a href="sitemap.html" title="Site Map">Site Map</a></li>
          <li><a href="#/" title="Search Terms">Search Terms</a></li>
          <li><a href="#" title="Advanced Search">Advanced Search</a></li>
          <li><a href="contact_us.html" title="Contact Us">Contact Us</a></li>
          <li><a href="#" title="Suppliers">Suppliers</a></li>
          <li class=" last"><a href="#" title="Our stores" class="link-rss">Our stores</a></li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-4">
        <h4>Contact us</h4>
        <div class="contacts-info">
          <address>
          <i class="add-icon">&nbsp;</i>123 Main Street, Anytown, <br>
          &nbsp;CA 12345  USA
          </address>
          <div class="phone-footer"><i class="phone-icon">&nbsp;</i> +1 800 123 1234</div>
          <div class="email-footer"><i class="email-icon">&nbsp;</i> <a href="mailto:support@magikcommerce.com">support@magikcommerce.com</a> </div>
        </div>
      </div>
    </div>
    <div class="footer-bottom container">
      <div class="col-sm-5 col-xs-12 coppyright"> &copy; 2015 Magikcommerce. All Rights Reserved.</div>
      <div class="col-sm-7 col-xs-12 company-links">
        <ul class="links">
          <li><a href="#" title="Magento Themes">Magento Themes</a></li>
          <li><a href="#" title="Premium Themes">Premium Themes</a></li>
          <li><a href="#" title="Responsive Themes">Responsive Themes</a></li>
          <li class="last"><a href="#" title="Magento Extensions">Magento Extensions</a></li>
        </ul>
      </div>
    </div>
  </footer>
  <!-- End Footer --> 
</div>
<div class="social">
  <ul>
    <li class="fb"><a href="#"></a></li>
    <li class="tw"><a href="#"></a></li>
    <li class="googleplus"><a href="#"></a></li>
    <li class="rss"><a href="#"></a></li>
    <li class="pintrest"><a href="#"></a></li>
    <li class="linkedin"><a href="#"></a></li>
    <li class="youtube"><a href="#"></a></li>
  </ul>
</div>

<!-- JavaScript --> 
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
 
<script type="text/javascript" src="js/common.js"></script> 
<script type="text/javascript" src="js/revslider.js"></script> 
<script type="text/javascript" src="js/owl.carousel.min.js"></script> 
<script type='text/javascript'>
jQuery(document).ready(function(){
jQuery('#rev_slider_4').show().revolution({
dottedOverlay: 'none',
delay: 5000,
startwidth: 1170,
startheight: 580,

hideThumbs: 200,
thumbWidth: 200,
thumbHeight: 50,
thumbAmount: 2,

navigationType: 'thumb',
navigationArrows: 'solo',
navigationStyle: 'round',

touchenabled: 'on',
onHoverStop: 'on',

swipe_velocity: 0.7,
swipe_min_touches: 1,
swipe_max_touches: 1,
drag_block_vertical: false,

spinner: 'spinner0',
keyboardNavigation: 'off',

navigationHAlign: 'center',
navigationVAlign: 'bottom',
navigationHOffset: 0,
navigationVOffset: 20,

soloArrowLeftHalign: 'left',
soloArrowLeftValign: 'center',
soloArrowLeftHOffset: 20,
soloArrowLeftVOffset: 0,

soloArrowRightHalign: 'right',
soloArrowRightValign: 'center',
soloArrowRightHOffset: 20,
soloArrowRightVOffset: 0,

shadow: 0,
fullWidth: 'on',
fullScreen: 'off',

stopLoop: 'off',
stopAfterLoops: -1,
stopAtSlide: -1,

shuffle: 'off',

autoHeight: 'off',
forceFullWidth: 'on',
fullScreenAlignForce: 'off',
minFullScreenHeight: 0,
hideNavDelayOnMobile: 1500,

hideThumbsOnMobile: 'off',
hideBulletsOnMobile: 'off',
hideArrowsOnMobile: 'off',
hideThumbsUnderResolution: 0,

hideSliderAtLimit: 0,
hideCaptionAtLimit: 0,
hideAllCaptionAtLilmit: 0,
startWithSlide: 0,
fullScreenOffsetContainer: ''
});
});
</script>
</body>

</html>

