<%-- 
    Document   : ThemSP
    Created on : Mar 25, 2019, 2:41:24 PM
    Author     : Hoàng Kim Tới
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
    <div class="row">
        <div class="col-md-12">

            <form class="form-horizontal" action="../QuanLySanPham" method="post">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><strong>Thêm</strong> Sản phẩm</h3>
                        <ul class="panel-controls">
                            <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                        </ul>
                    </div>
                    <div class="panel-body">
                        <p>This is non libero bibendum, scelerisque arcu id, placerat nunc. Integer ullamcorper rutrum dui eget porta. Fusce enim dui, pulvinar a augue nec, dapibus hendrerit mauris. Praesent efficitur, elit non convallis faucibus, enim sapien suscipit mi, sit amet fringilla felis arcu id sem. Phasellus semper felis in odio convallis, et venenatis nisl posuere. Morbi non aliquet magna, a consectetur risus. Vivamus quis tellus eros. Nulla sagittis nisi sit amet orci consectetur laoreet. Vivamus volutpat erat ac vulputate laoreet. Phasellus eu ipsum massa.</p>
                    </div>
                    <div class="panel-body">                                                                        

                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Tên sản phẩm</label>
                            <div class="col-md-6 col-xs-12">                                            
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                    <input type="text" class="form-control" name="tensanpham"/>
                                </div>                                            
                                <span class="help-block">This is sample of text field</span>
                            </div>
                        </div>

                        <div class="form-group">                                        
                            <label class="col-md-3 col-xs-12 control-label">Giá sản phẩm</label>
                            <div class="col-md-6 col-xs-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="fa fa-money"></span></span>
                                    <input type="text" class="form-control" name="giasanpham"/>
                                </div>            
                                <span class="help-block">Password field sample</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Sự kiện</label>
                            <div class="col-md-6 col-xs-12">                                                                                            
                                <select class="form-control select" name="sukien">
                                    <option value="New">New</option>
                                    <option value="sale">sale</option>
                                </select>
                                <span class="help-block">Select box example</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Giơi thiệu</label>
                            <div class="col-md-6 col-xs-12">                                            
                                <textarea class="form-control" rows="5" name="gioithieu"></textarea>
                                <span class="help-block">Default textarea field</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Danh mục</label>
                            <div class="col-md-6 col-xs-12">                                                                                            
                                <select class="form-control select" name="danhmuc">
                                    <option value="0">Máy tính</option>
                                    <option value="1">Phụ kiện</option>
                                </select>
                                <span class="help-block">Select box example</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">File</label>
                            <div class="col-md-6 col-xs-12">                                                                                                                                        
                                <input type="file" class="fileinput btn-primary" name="filename" id="filename" title="Browse file"/>
                                <span class="help-block">Input type file</span>
                            </div>
                        </div>

                    </div>
                    <div class="panel-footer">
                        <input type="hidden" name="command" value="insert">
                        <button class="btn btn-primary pull-right" style="margin-right: 50%;" type="submit">Submit</button>
                    </div>
                </div>
            </form>

        </div>
    </div>                    

</div>
<!-- END PAGE CONTENT WRAPPER -->
