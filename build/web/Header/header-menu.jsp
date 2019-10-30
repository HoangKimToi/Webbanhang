<%-- 
    Document   : header-menu
    Created on : Feb 20, 2019, 2:31:36 PM
    Author     : Hoàng Kim Tới
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav>
    <div class="container">
      <div class="nav-inner"> 
        
        <!-- mobile-menu -->
        <div class="hidden-desktop" id="mobile-menu">
          <ul class="navmenu">
            <li>
              <div class="menutop">
                <div class="toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></div>
                <h2>Menu</h2>
              </div>
            </li>
          </ul>
          <!--navmenu--> 
        </div>
        <!--End mobile-menu --> 
        <a class="logo-small" title="Magento Commerce" href="index.jsp"><img alt="Magento Commerce" src="images/logo-small.png"></a>
        <ul id="nav" class="hidden-xs">
          <li class="level0 parent drop-menu"><a href="index.jsp" class="active"><span>Trang chủ</span> </a></li>
          <li class="level0 parent drop-menu"><a href="index.jsp?module=danhsach&pages=1"><span>Danh sách</span> </a></li>
          <li class="level0 nav-5 level-top first"> <a href="index.jsp?module=thongtin" class="level-top"> <span>Thông tin</span> </a></li>
          <li class="level0 nav-7 level-top parent"> <a href="index.jsp?module=lienhe" class="level-top"> <span>Liên hệ</span> </a></li>
        </ul>
      </div>
    </div>
  </nav>
