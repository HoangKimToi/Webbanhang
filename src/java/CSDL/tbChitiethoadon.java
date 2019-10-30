/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsChitiethoadon;
import Models.clsHoadon;
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
public class tbChitiethoadon {
    public Vector<clsChitiethoadon> LayDSCTHD()
    {
        Vector<clsChitiethoadon> dsCTHD= new Vector<clsChitiethoadon>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbchitiethoadon";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())
                {
                    clsChitiethoadon cthd = new clsChitiethoadon();
                    cthd.setBillDetailID(rs.getInt("bill_detail_id"));
                    cthd.setBillID(rs.getInt("bill_id"));
                    cthd.setMasp(rs.getInt("masp"));
                    cthd.setGia(rs.getDouble("gia"));
                    cthd.setQuantity(rs.getInt("quantity"));
                    dsCTHD.add(cthd);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbChitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dsCTHD;
    }
    public int ThemCTHD(clsChitiethoadon ct)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        else{
            String sql = "INSERT INTO tbchitiethoadon VALUES(?,?,?,?,?)";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(1, ct.getBillDetailID());
                stm.setLong(2, ct.getBillID());
                stm.setInt(3, ct.getMasp());
                stm.setDouble(4, ct.getGia());
                stm.setInt(5, ct.getQuantity());
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbChitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
//    public static void main(String[] args) {
//        new tbChitiethoadon().ThemCTHD(new clsChitiethoadon(1, 1, 1, 0, 0));
//    }
    public int XoaCTHD(int bill_detail_id)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        {
            String sql = "DELETE FROM tbchitiethoadon WHERE bill_detail_id=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(1, bill_detail_id);
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbChitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public int SuaCTHD(int bill_detail_id,long bill_id,int masp,double gia,int quantity)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn==null)
            return -1;
        else
        {
            String sql = 
             "UPDATE tbhoadon SET id=?,masp=?,gia=?,quantity=? WHERE bill_detail_id=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setLong(1, bill_id);
                stm.setInt(2, masp);
                stm.setDouble(3, gia);
                stm.setInt(4, quantity);
                int n = stm.executeUpdate();
                if(n<=0)
                    return 0;
                else
                    return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tbChitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public Vector<clsChitiethoadon> TimKiemCTHD(String ten)
    {
        Vector<clsChitiethoadon> dscthd= new Vector<clsChitiethoadon>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbhoadon WHERE bill_detail_id like '%"+ten+"%'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsChitiethoadon cthd = new clsChitiethoadon();
                    cthd.setBillDetailID(rs.getInt("bill_detail_id"));
                    cthd.setBillID(rs.getLong("bill_id"));
                    cthd.setMasp(rs.getInt("masp"));
                    cthd.setGia(rs.getDouble("gia"));
                    cthd.setQuantity(rs.getInt("quantity"));
                    dscthd.add(cthd);

                }
            } catch (SQLException ex) {
                Logger.getLogger(tbChitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dscthd;
    }
}
