/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsUser;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hoàng Kim Tới
 */
public class tbUser {
    public Vector<clsUser> LayDSUser()
    {
        Vector<clsUser> dsUser = new Vector<clsUser>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbuser";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())
                {
                    clsUser user = new clsUser();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setHoten(rs.getString("hoten"));
                    user.setDiachi(rs.getString("diachi"));
                    user.setSDT(rs.getInt("sdt"));
                    user.setGioitinh(rs.getBoolean("gioitinh"));
                    user.setChuvu(rs.getString("chucvu"));
                    dsUser.add(user);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbUser.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dsUser;
    }
    public int ThemUser(int id,String username,String password,String hoten,String diachi,int sdt,boolean gioitinh,String chuvu)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
            return -1;
        else
        {
            String sql = "INSERT INTO tbuser VALUES(NULL,?,?,?,?,?,?,?)";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, username);
                stm.setString(2, password);
                stm.setString(3, hoten);
                stm.setString(4, diachi);
                stm.setInt(5, sdt);
                stm.setBoolean(6, gioitinh);
                stm.setString(7, chuvu);              
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbUser.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public int XoaUser(int id)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
            return -1;
        else
        {
            String sql = "DELETE FROM tbuser WHERE id=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(1, id);
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbUser.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public int SuaUser(int id,String username,String password,String hoten,String diachi,int sdt,boolean gioitinh,String chuvu)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
            return -1;
        else
        {
            String sql = 
             "UPDATE tbuser SET username=?,password=?,hoten=?,diachi=?,sdt=?,gioitinh=?,chuvu=? WHERE id=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(8, id);
                stm.setString(1, username);
                stm.setString(2, password);
                stm.setString(3, hoten);
                stm.setString(4, diachi);
                stm.setInt(5, sdt);
                stm.setBoolean(6, gioitinh);
                stm.setString(7, chuvu);       
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbUser.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public Vector<clsUser> TimKiemUser(String ten)
    {
        Vector<clsUser> dsUser = new Vector<clsUser>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbuser WHERE hoten like '%"+ten+"%'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsUser user = new clsUser();
                   user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setHoten(rs.getString("hoten"));
                    user.setDiachi(rs.getString("diachi"));
                    user.setSDT(rs.getInt("sdt"));
                    user.setGioitinh(rs.getBoolean("gioitinh"));
                    user.setChuvu(rs.getString("chucvu"));
                    dsUser.add(user);

                }
            } catch (SQLException ex) {
                Logger.getLogger(tbUser.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dsUser;
    }
}
