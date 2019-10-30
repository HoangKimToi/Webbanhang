/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import CSDL.tbsanpham;
import Models.clsSanpham;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Hoàng Kim Tới
 */
public class QuanLySanPham extends HttpServlet {

    tbsanpham sanpham = new tbsanpham();

@Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String command = request.getParameter("command");
        String product_id = request.getParameter("product_id");
        try {
            switch (command) {
                case "delete":
                    sanpham.XoaSP(Integer.parseInt(product_id));
                    response.sendRedirect("admin/index.jsp?module=sanpham");
                    break;
            }
        } catch (Exception e) {
        }
    }

    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String command = request.getParameter("command");
        String tensp = request.getParameter("tensanpham");
        String gia = request.getParameter("giasanpham");
        String sukien = request.getParameter("sukien");
        String gioithieu = request.getParameter("gioithieu");
        String danhmuc = request.getParameter("danhmuc");
        String filename = request.getParameter("filename");
        String sanpham_id = request.getParameter("sanpham_id");
        String error = "";
        if (tensp.equals("") || gia.equals("") || sukien.equals("") || gioithieu.equals("") || danhmuc.equals("") || filename.equals("")) {
            error = "Vui lòng nhập.";
            request.setAttribute("error", error);
        }
        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                        sanpham.ThemSP(new clsSanpham(0, tensp, Long.parseLong(gia), filename, gioithieu, sukien, Integer.parseInt(danhmuc)));
                        response.sendRedirect("admin/index.jsp?module=sanpham");
                        break;
                    case "update":
                        sanpham.SuaSP(new clsSanpham(Integer.parseInt(sanpham_id), tensp, Long.parseLong(gia), filename, gioithieu, sukien, Integer.parseInt(danhmuc)));
                        response.sendRedirect("admin/index.jsp?module=sanpham");
                        break;
                }
            } else {
                response.sendRedirect("admin/index.jsp?module=sanpham");
            }
        } catch (Exception e) {
        }

    }

}
