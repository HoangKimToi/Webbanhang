/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import CSDL.tbDanhmuc;
import Models.clsDanhmuc;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hoàng Kim Tới
 */
public class QuanLyDanhMuc extends HttpServlet {

    tbDanhmuc danhmuc = new tbDanhmuc();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String command = request.getParameter("command");
        String danhmuc_id = request.getParameter("danhmuc_id");
        try {
            switch (command) {
                case "delete":
                    danhmuc.XoaDM(Integer.parseInt(danhmuc_id));
                    response.sendRedirect("admin/index.jsp?module=danhmuc");
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
        String TenDM = request.getParameter("tendanhmuc");
        String danhmuc_id = request.getParameter("danhmuc_id");
        String error = "";
        if (TenDM.equals("")) {
            error = "Vui lòng nhập tên danh mục";
            request.setAttribute("error", error);
        }
        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                        danhmuc.ThemDM(new clsDanhmuc(0, TenDM));
                        response.sendRedirect("admin/index.jsp?module=danhmuc");
                        break;
                    case "update":
                    danhmuc.SuaDM(new clsDanhmuc(Integer.parseInt(danhmuc_id),TenDM));
                    response.sendRedirect("admin/index.jsp?module=danhmuc");
                    break;
                }
            } else {
                response.sendRedirect("admin/index.jsp?module=danhmuc");
            }
        } catch (Exception e) {
        }
    }
}
