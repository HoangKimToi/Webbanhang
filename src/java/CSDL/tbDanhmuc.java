/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsDanhmuc;
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
public class tbDanhmuc {
    public Vector<clsDanhmuc> LayDSDM() {
        Vector<clsDanhmuc> dsdm = new Vector<clsDanhmuc>();
        Connection cnn = Database.KetnoiCSDL();
        if (cnn != null) {
            String sql = "SELECT * FROM tbdanhmuc";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next()) {
                    clsDanhmuc dm = new clsDanhmuc();
                    dm.setDanhmuc_id(rs.getInt("danhmuc_id"));
                    dm.setTendanhmuc(rs.getString("tendanhmuc"));
                    dsdm.add(dm);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbDanhmuc.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dsdm;
    }
    public Vector<clsDanhmuc> LayDM(int danhmuc_id) {
        Vector<clsDanhmuc> dsdm = new Vector<clsDanhmuc>();
        Connection cnn = Database.KetnoiCSDL();
        if (cnn != null) {
            String sql = "SELECT * FROM tbdanhmuc where danhmuc_id='"+danhmuc_id+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next()) {
                    clsDanhmuc dm = new clsDanhmuc();
                    dm.setDanhmuc_id(rs.getInt("danhmuc_id"));
                    dm.setTendanhmuc(rs.getString("tendanhmuc"));
                    dsdm.add(dm);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbDanhmuc.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dsdm;
    }
    public int ThemDM(clsDanhmuc dm) {
        Connection cnn = Database.KetnoiCSDL();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO tbdanhmuc VALUES(?,?)";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(1, dm.getDanhmuc_id());
                stm.setString(2, dm.getTendanhmuc());
                int n = stm.executeUpdate();
                if (n <= 0) {
                    return 0;
                } else {
                    return 1;
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public int SuaDM(clsDanhmuc dm) {
        Connection cnn = Database.KetnoiCSDL();
        if (cnn == null) {
            return -1;
        } else {
            String sql
                    = "UPDATE tbdanhmuc SET tendanhmuc=? WHERE danhmuc_id=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, dm.getTendanhmuc());
                stm.setInt(2, dm.getDanhmuc_id());
                int n = stm.executeUpdate();
                if (n <= 0) {
                    return 0;
                } else {
                    return 1;
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
    public int XoaDM(int danhmuc_id) {
        Connection cnn = Database.KetnoiCSDL();
        if (cnn == null) {
            return -1;
        }
        {
            String sql = "DELETE FROM tbdanhmuc WHERE danhmuc_id=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(1, danhmuc_id);
                int n = stm.executeUpdate();
                if (n <= 0) {
                    return 0;
                } else {
                    return 1;
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
                return 0;
            }
        }
    }
//    public static void main(String[] args) {
//        tbDanhmuc dm = new tbDanhmuc();
//        for (int i = 0; i < 3; i++) {
//            dm.ThemDM(new clsDanhmuc(0, "Danh mục" + i));
//        }
//            System.out.println(dm.XoaDM(3));
//    }
}
