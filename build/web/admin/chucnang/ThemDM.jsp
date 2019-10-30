<%-- 
    Document   : ThemDM
    Created on : Mar 24, 2019, 1:55:44 PM
    Author     : Hoàng Kim Tới
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Danh mục</a></li>
</ul>
<%
    String error = "";
    if (request.getParameter("error")==null) {
            error =(String) request.getParameter("error");
        }
%>
<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">

    <div class="row">
        <div class="col-md-12">

            <form class="form-horizontal" action="../QuanLyDanhMuc" method="post">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><strong>Thêm danh mục</strong></h3>
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
                                    <input type="text" class="form-control" name="tendanhmuc"/>
                                    
                                </div>                                            
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">  
                        <input type="hidden" name="command" value="insert">
                        <button class="btn btn-primary pull-right" style="margin-right: 50%;" type="submit" >Submit</button>
                    </div>
                </div>
            </form>

        </div>
    </div>                    

</div>
<!-- END PAGE CONTENT WRAPPER -->
