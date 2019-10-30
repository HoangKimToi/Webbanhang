<%-- 
    Document   : content
    Created on : Mar 23, 2019, 3:12:54 PM
    Author     : Hoàng Kim Tới
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="page-sidebar">
    <!-- START X-NAVIGATION -->
    <ul class="x-navigation">
        <li class="xn-logo">
            <a href="index.jsp">Quản trị</a>
            <a href="#" class="x-navigation-control"></a>
        </li>
        <li class="xn-profile">
            <a href="#" class="profile-mini">
                <img src="assets/images/users/avatar.jpg" alt="John Doe"/>
            </a>
            <div class="profile">
                <div class="profile-image">
                    <img src="assets/images/users/avatar.jpg" alt="John Doe"/>
                </div>
                <div class="profile-data">
                    <div class="profile-data-name">John Doe</div>
                    <div class="profile-data-title">Web Developer/Designer</div>
                </div>
                <div class="profile-controls">
                    <a href="pages-profile.html" class="profile-control-left"><span class="fa fa-info"></span></a>
                    <a href="pages-messages.html" class="profile-control-right"><span class="fa fa-envelope"></span></a>
                </div>
            </div>                                                                        
        </li>
        <li class="active">
            <a href="index.jsp"><span class="fa fa-desktop"></span> <span class="xn-text">Trang chủ</span></a>                        
        </li>                    
        <li class="xn-openable">
            <a href="index.jsp?module=sanpham"><span class="fa fa-files-o"></span> <span class="xn-text">Sản phẩm</span></a>
        </li>
        <li class="xn-openable">
            <a href="index.jsp?module=danhmuc"><span class="fa fa-file-text-o"></span> <span class="xn-text">Danh mục</span></a>
        </li>
        <li class="xn-openable">
            <a href="index.jsp?module=hoadon"><span class="fa fa-cogs"></span> <span class="xn-text">Hóa đơn</span></a>                        
        </li>                    
        <li class="xn-openable">
            <a href="#"><span class="fa fa-pencil"></span> <span class="xn-text">Forms</span></a>
            <ul>
                <li class="xn-openable">
                    <a href="form-layouts-two-column.html"><span class="fa fa-tasks"></span> Form Layouts</a>                                
                    <ul>
                        <li><a href="form-layouts-one-column.html"><span class="fa fa-align-justify"></span> One Column</a></li>
                        <li><a href="form-layouts-two-column.html"><span class="fa fa-th-large"></span> Two Column</a></li>
                        <li><a href="form-layouts-tabbed.html"><span class="fa fa-table"></span> Tabbed</a></li>
                        <li><a href="form-layouts-separated.html"><span class="fa fa-th-list"></span> Separated Rows</a></li>
                    </ul> 
                </li>
                <li><a href="form-elements.html"><span class="fa fa-file-text-o"></span> Elements</a></li>
                <li><a href="form-validation.html"><span class="fa fa-list-alt"></span> Validation</a></li>
                <li><a href="form-wizards.html"><span class="fa fa-arrow-right"></span> Wizards</a></li>
                <li><a href="form-editors.html"><span class="fa fa-text-width"></span> WYSIWYG Editors</a></li>
                <li><a href="form-file-handling.html"><span class="fa fa-floppy-o"></span> File Handling</a></li>
            </ul>
        </li>
        <li class="xn-openable">
            <a href="tables.html"><span class="fa fa-table"></span> <span class="xn-text">Tables</span></a>
            <ul>                            
                <li><a href="table-basic.html"><span class="fa fa-align-justify"></span> Basic</a></li>
                <li><a href="table-datatables.html"><span class="fa fa-sort-alpha-desc"></span> Data Tables</a></li>
                <li><a href="table-export.html"><span class="fa fa-download"></span> Export Tables</a></li>                            
            </ul>
        </li>
        <li class="xn-openable">
            <a href="#"><span class="fa fa-bar-chart-o"></span> <span class="xn-text">Charts</span></a>
            <ul>
                <li><a href="charts-morris.html">Morris</a></li>
                <li><a href="charts-nvd3.html">NVD3</a></li>
                <li><a href="charts-rickshaw.html">Rickshaw</a></li>
                <li><a href="charts-other.html">Other</a></li>
            </ul>
        </li>                    
        <li>
            <a href="maps.html"><span class="fa fa-map-marker"></span> <span class="xn-text">Maps</span></a>
        </li>                    
        <li class="xn-openable">
            <a href="#"><span class="fa fa-sitemap"></span> <span class="xn-text">Navigation Levels</span></a>
            <ul>                            
                <li class="xn-openable">
                    <a href="#">Second Level</a>
                    <ul>
                        <li class="xn-openable">
                            <a href="#">Third Level</a>
                            <ul>
                                <li class="xn-openable">
                                    <a href="#">Fourth Level</a>
                                    <ul>
                                        <li><a href="#">Fifth Level</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>                            
            </ul>
        </li>

    </ul>
    <!-- END X-NAVIGATION -->
</div>
