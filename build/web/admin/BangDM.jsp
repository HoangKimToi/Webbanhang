<%-- 
    Document   : BangDM
    Created on : Mar 24, 2019, 1:42:01 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="java.util.Vector"%>
<%@page import="Models.clsDanhmuc"%>
<%@page import="CSDL.tbDanhmuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul class="breadcrumb">
    <li><a href="#">Home</a></li>                    
    <li><a href="#">Danh mục</a></li>
</ul>
<div class="page-title">                    
    <h2><span class="fa fa-gift"></span> Thông tin danh mục</h2>
</div>
<%
    tbDanhmuc dm = new tbDanhmuc();
    Vector<clsDanhmuc> dsDanhmuc = dm.LayDSDM();
%>
<div class="page-content-wrap">                

    <div class="row">
        <div class="col-md-12">
            <!-- START DEFAULT DATATABLE -->
            <div class="panel panel-default">
                <div class="panel-heading">                                
                    <a href="index.jsp?module=Themdanhmuc" class="panel-title">
                        Thêm danh mục
                    </a>                              
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table datatable table-striped">
                            <thead>
                                <tr>
                                    <th>Danh mục ID</th>
                                    <th>Tên danh mục</th>
                                    <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <%
                                for (clsDanhmuc ds : dsDanhmuc) {
                            %>
                            <tbody>
                                <tr>
                                    <td><%=ds.getDanhmuc_id()%></td>
                                    <td><%=ds.getTendanhmuc()%></td>
                                    <td style="width: 6%;">
                                    <center>
                                        <a href="index.jsp?module=updateDM&command=update&danhmuc_id=<%=ds.getDanhmuc_id()%>" class="">Sửa</a>
                                        &nbsp;&nbsp; | &nbsp;&nbsp;
                                        <a href="../QuanLyDanhMuc?command=delete&danhmuc_id=<%=ds.getDanhmuc_id()%>" class="">Xóa</a>
                                    </center>
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
