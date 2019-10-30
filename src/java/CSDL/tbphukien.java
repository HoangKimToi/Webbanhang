/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsPhukien;
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
public class tbphukien {
    public Vector<clsPhukien> LayDSPK()
    {
        Vector<clsPhukien> dspk= new Vector<clsPhukien>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbphukien";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())
                {
                    clsPhukien pk = new clsPhukien();
                    pk.setMapk(rs.getInt("maphukien"));
                    pk.setTenpk(rs.getString("tenphukien"));
                    pk.setGia(rs.getDouble("gia"));
                    pk.setAnh(rs.getString("anh"));
                    pk.setGioithieu(rs.getString("gioithieu"));
                    pk.setSukien(rs.getString("sukien"));
                    dspk.add(pk);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbphukien.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dspk;
    }
    public Vector<clsPhukien> LayPK(int maphukien)
    {
        Vector<clsPhukien> dspk= new Vector<clsPhukien>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbphukien where maphukien='"+maphukien+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())
                {
                    clsPhukien pk = new clsPhukien();
                    pk.setMapk(rs.getInt("maphukien"));
                    pk.setTenpk(rs.getString("tenphukien"));
                    pk.setGia(rs.getDouble("gia"));
                    pk.setAnh(rs.getString("anh"));
                    pk.setGioithieu(rs.getString("gioithieu"));
                    pk.setSukien(rs.getString("sukien"));
                    dspk.add(pk);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbphukien.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dspk;
    }
    public int ThemPK(int maphukien,String tenphukien,double gia,String anh,String gioithieu,String sukien)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        else{
            String sql = "INSERT INTO tbphukien VALUES(NULL,?,?,?,?,?)";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, tenphukien);
                stm.setDouble(2, gia);
                stm.setString(3, anh);
                stm.setString(4, gioithieu);
                stm.setString(5, sukien);
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbphukien.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public int XoaPK(int maphukien)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        {
            String sql = "DELETE FROM tbphukien WHERE maphukien=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(1, maphukien);
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbphukien.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public int SuaPK(int maphukien,String tenphukien,double gia,String anh,String gioithieu,String sukien)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        else
        {
            String sql = 
             "UPDATE tbphukien SET tenphukien=?,gia=?,anh=?,gioithieu=?,sukien=? WHERE maphukien=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, tenphukien);
                stm.setDouble(2, gia);
                stm.setString(3, anh);
                stm.setString(4, gioithieu);
                stm.setString(5, sukien);
                stm.setInt(6, maphukien);
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbphukien.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public Vector<clsPhukien> TimKiemPK(String ten)
    {
        Vector<clsPhukien> dsPK = new Vector<clsPhukien>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbphukien WHERE tenphukien like '%"+ten+"%'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsPhukien pk = new clsPhukien();
                    pk.setMapk(rs.getInt("maphukien"));
                    pk.setTenpk(rs.getString("tenphukien"));
                    pk.setGia(rs.getDouble("gia"));
                    pk.setAnh(rs.getString("anh"));
                    pk.setGioithieu(rs.getString("gioithieu"));
                    pk.setSukien(rs.getString("sukien"));
                    dsPK.add(pk);

                }
            } catch (SQLException ex) {
                Logger.getLogger(tbphukien.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dsPK;
    }
}
