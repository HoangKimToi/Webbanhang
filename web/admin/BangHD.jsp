<%-- 
    Document   : BangHD
    Created on : Mar 25, 2019, 1:29:32 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="Models.clsHoadon"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbHoadon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<ul class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li class="active">Bảng Hóa đơn</li>
</ul>
<div class="page-title">                    
    <h2><span class="fa fa-gift"></span> Bảng hóa đơn</h2>
</div>
<%
    tbHoadon hoadon = new tbHoadon();
    Vector<clsHoadon> dsHoadon = hoadon.LayDSHD();
%>
<div class="page-content-wrap">                
    <div class="row">
        <div class="col-md-12">
            <!-- START DEFAULT DATATABLE -->
            <div class="panel panel-default">
                <div class="panel-heading">                                
                                                 
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table datatable">
                            <thead>
                                <tr>
                                    <th>Mã hóa đơn</th>
                                    <th>Khách hàng</th>
                                    <th>Tổng tiền</th>
                                    <th>Thanh toán</th>
                                    <th>Địa chỉ</th>
                                    <th>Ngày mua</th>
                                    <th style="width: 10%;">&nbsp;</th>
                                </tr>
                            </thead>
                            <%
                                for (clsHoadon ds : dsHoadon) {
                            %>
                            <tbody>
                                <tr>
                                    <td><%=ds.getBillID()%></td>
                                    <td><%=ds.getUsername()%></td>
                                    <td><%=ds.getTotal()%></td>
                                    <td><%=ds.getPayment()%></td>
                                    <td><%=ds.getAddress()%></td>
                                    <td><%=ds.getDate()%></td>
                                    <td>
                            <center>
                                <a href="" class="">Xác nhận</a>
                                &nbsp;&nbsp; | &nbsp;&nbsp;
                                <a href="../QuanLyHoaDon?command=delete&bill_id=<%=ds.getBillID()%>" class="">Hủy</a>
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
        </div>
    </div>                                
</div>