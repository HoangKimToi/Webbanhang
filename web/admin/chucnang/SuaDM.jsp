<%-- 
    Document   : SuaDM
    Created on : Mar 24, 2019, 3:45:10 PM
    Author     : Hoàng Kim Tới
--%>

<%@page import="java.util.Vector"%>
<%@page import="Models.clsDanhmuc"%>
<%@page import="CSDL.tbDanhmuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String danhmuc_id = request.getParameter("danhmuc_id");
    tbDanhmuc dm = new tbDanhmuc();
    Vector<clsDanhmuc> dsDanhmuc = dm.LayDM(Integer.parseInt(danhmuc_id));
%>
<div class="page-content-wrap">

    <div class="row">
        <div class="col-md-12">

            <form class="form-horizontal" action="../QuanLyDanhMuc" method="post">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><strong>Sửa danh mục</strong></h3>
                        <ul class="panel-controls">
                            <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                        </ul>
                    </div>
                    <div class="panel-body">                                                                        

                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Tên danh mục</label>
                            <div class="col-md-6 col-xs-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                        <%
                                            for (clsDanhmuc ds : dsDanhmuc) {
                                        %>
                                    <input type="text" class="form-control" name="tendanhmuc" value="<%=ds.getTendanhmuc()%>"/>
                                    <%
                                        }
                                    %>
                                </div>  
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">  
                        <input type="hidden" name="command" value="update">
                        <input type="hidden" name="danhmuc_id" value="<%=request.getParameter("danhmuc_id")%>">
                        <button class="btn btn-primary pull-right" style="margin-right: 50%;" type="submit" >Submit</button>
                    </div>
                </div>
            </form>

        </div>
    </div>                    

</div>
