<%-- 
    Document   : BangSP
    Created on : Mar 23, 2019, 3:48:00 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="java.util.Vector"%>
<%@page import="Models.clsSanpham"%>
<%@page import="CSDL.tbsanpham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul class="breadcrumb">
    <li><a href="#">Home</a></li>                    
    <li><a href="#">Sản phẩm</a></li>
    <li class="active">Bảng sản phẩm</li>
</ul>
<div class="page-title">                    
    <h2><span class="fa fa-gift"></span> Bảng sản phẩm</h2>
</div>
<%
    tbsanpham sanpham = new tbsanpham();
    Vector<clsSanpham> dsSanpham = sanpham.LayDSSP();
%>
<div class="page-content-wrap">                

    <div class="row">
        <div class="col-md-12">
            <!-- START DEFAULT DATATABLE -->
            <div class="panel panel-default">
                <div class="panel-heading">                                
                    <a href="index.jsp?module=Themsanpham" class="panel-title">
                        Thêm sản phẩm
                    </a>                              
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table datatable">
                            <thead>
                                <tr>
                                    <th style="width: 5%;">Mã sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Giá sản phẩm</th>
                                    <th style="width: 10%;">Ảnh</th>
                                    <th style="width: 30%;">Giới thiệu</th>
                                    <th>Sự kiện</th>
                                    <th>Danh mục</th>
                                    <th style="width: 6%;">&nbsp;</th>
                                </tr>
                            </thead>
                            <%
                                for(clsSanpham ds : dsSanpham){
                            %>
                            <tbody>
                                <tr>
                                    <td><%=ds.getMasp()%></td>
                                    <td><%=ds.getTensp()%></td>
                                    <td><%=ds.getGia()%> đ</td>
                                    <td>
                                        <img src="/WebBanDT/products-images/<%=ds.getAnh()%>" class="img-responsive" alt="product-image" />
                                    </td>
                                    <td><%=ds.getGioithieu()%></td>
                                    <td><%=ds.getSukien()%></td>
                                    <td>
                                        <%
                                            String sukien;
                                            if (ds.getMaPK()== 0) {
                                                   sukien = "Máy tính";
                                                }else{
                                                    sukien = "Phụ kiện";
                                            }
                                        %>
                                        <%=sukien%>
                                    </td>
                                    <td>
                                        <a href="index.jsp?module=updateSP&command=update&sanpham_id=<%=ds.getMasp()%>" class="">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                                        <a href="../QuanLySanPham?command=delete&product_id=<%=ds.getMasp()%>" class="">Xóa</a>
                                    </td>
                                </tr>
                            </tbody>
                            <%
                                }
                            %>
                        </table>
                    </div>
                </div>
            </div>
            <!-- END DEFAULT DATATABLE -->
        </div>
    </div>                                
</div>

