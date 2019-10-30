/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import CSDL.tbHoadon;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hoàng Kim Tới
 */
public class QuanLyHoaDon extends HttpServlet {
    tbHoadon hoadon = new tbHoadon();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String command = request.getParameter("command");
        String bill_id = request.getParameter("bill_id");
        try {
            switch (command) {
                case "delete":
                    hoadon.XoaHD(Long.parseLong(bill_id));
                    response.sendRedirect("admin/index.jsp?module=hoadon");
                    break;
            }
        } catch (Exception e) {
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
