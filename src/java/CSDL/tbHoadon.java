/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsHoadon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hoàng Kim Tới
 */
public class tbHoadon {
    public Vector<clsHoadon> LayDSHD()
    {
        Vector<clsHoadon> dsHD= new Vector<clsHoadon>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbhoadon";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())
                {
                    clsHoadon hd = new clsHoadon();
                    hd.setBillID(rs.getLong("bill_id"));
                    hd.setUsername(rs.getString("username"));
                    hd.setTotal(rs.getDouble("total"));
                    hd.setPayment(rs.getString("payment"));
                    hd.setAddress(rs.getString("address"));
                    hd.setDate(rs.getTimestamp("date"));
                    dsHD.add(hd);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbHoadon.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dsHD;
    }
    public int ThemHD(clsHoadon hd)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        else{
            String sql = "INSERT INTO tbhoadon VALUES(?,?,?,?,?,?)";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setLong(1, hd.getBillID());
                stm.setString(2, hd.getUsername());
                stm.setDouble(3, hd.getTotal());
                stm.setString(4, hd.getPayment());
                stm.setString(5, hd.getAddress());
                stm.setTimestamp(6, hd.getDate());
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbHoadon.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
//    public static void main(String[] args) {
//        new tbHoadon().ThemHD(new clsHoadon(0, 0, 0, "Card", "HD", new Timestamp(new Date().getTime())));
//    }
    public int XoaHD(long bill_id)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        {
            String sql = "DELETE FROM tbhoadon WHERE bill_id=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setLong(1, bill_id);
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbHoadon.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public int SuaHD(long bill_id,String username,double total,String payment,String address,Timestamp date)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        else
        {
            String sql = 
             "UPDATE tbhoadon SET username=?,total=?,payment=?,address=?,date=? WHERE bill_id=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, username);
                stm.setDouble(2, total);
                stm.setString(3, payment);
                stm.setString(4, address);
                stm.setTimestamp(5, date);
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
    public Vector<clsHoadon> TimKiemHD(String ten)
    {
        Vector<clsHoadon> dshd= new Vector<clsHoadon>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbhoadon WHERE bill_id like '%"+ten+"%'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsHoadon hd = new clsHoadon();
                    hd.setBillID(rs.getLong("bill_id"));
                    hd.setUsername(rs.getString("username"));
                    hd.setTotal(rs.getDouble("total"));
                    hd.setPayment(rs.getString("payment"));
                    hd.setAddress(rs.getString("address"));
                    hd.setDate(rs.getTimestamp("date"));
                    dshd.add(hd);

                }
            } catch (SQLException ex) {
                Logger.getLogger(tbHoadon.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dshd;
    }
}
