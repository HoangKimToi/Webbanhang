/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hoàng Kim Tới
 */
public class User {
    public int kiemtra(String u,String p)
    {
        int kq = -1;
        Connection cnn = Database.KetnoiCSDL();

        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbuser WHERE username=? and password = ?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, u);
                stm.setString(2, p);
                ResultSet rs = stm.executeQuery();
                if(rs.next())
                {
                    kq = 1;
                }
                else
                    kq = 0;
            } catch (SQLException ex) {
                kq = -2;
                Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return kq;
    }
    public int QuyenHan(String cv)
    {
        int kq = -1;
        Connection cnn = Database.KetnoiCSDL();

        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbuser WHERE chucvu=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, cv);
                ResultSet rs = stm.executeQuery();
                if(rs.next())
                {
                    kq = 1;
                }
                else
                    kq = 0;
            } catch (SQLException ex) {
                kq = -2;
                Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return kq;
    }
}
