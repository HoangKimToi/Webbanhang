/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsSanpham;
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
public class tbsanpham {

    public Vector<clsSanpham> LayDSSP() {
        Vector<clsSanpham> dssp = new Vector<clsSanpham>();
        Connection cnn = Database.KetnoiCSDL();
        if (cnn != null) {
            String sql = "SELECT * FROM tbsanpham";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next()) {
                    clsSanpham sp = new clsSanpham();
                    sp.setMasp(rs.getInt("masp"));
                    sp.setTensp(rs.getString("tensp"));
                    sp.setGia(rs.getDouble("gia"));
                    sp.setAnh(rs.getString("anh"));
                    sp.setGioithieu(rs.getString("gioithieu"));
                    sp.setSukien(rs.getString("sukien"));
                    sp.setMaPK(rs.getInt("mapk"));
                    dssp.add(sp);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dssp;
    }
    public Vector<clsSanpham> SP(int masp)
    {
        Vector<clsSanpham> dssp= new Vector<clsSanpham>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbsanpham where masp='"+masp+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())
                {
                    clsSanpham sp = new clsSanpham();
                    sp.setMasp(rs.getInt("masp"));
                    sp.setTensp(rs.getString("tensp"));
                    sp.setGia(rs.getDouble("gia"));
                    sp.setAnh(rs.getString("anh"));
                    sp.setGioithieu(rs.getString("gioithieu"));
                    sp.setSukien(rs.getString("sukien"));
                    sp.setMaPK(rs.getInt("mapk"));
                    dssp.add(sp);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dssp;
    }
    public Vector<clsSanpham> SPNew(String sukien)
    {
        Vector<clsSanpham> dssp= new Vector<clsSanpham>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbsanpham where sukien='"+sukien+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())
                {
                    clsSanpham sp = new clsSanpham();
                    sp.setMasp(rs.getInt("masp"));
                    sp.setTensp(rs.getString("tensp"));
                    sp.setGia(rs.getDouble("gia"));
                    sp.setAnh(rs.getString("anh"));
                    sp.setGioithieu(rs.getString("gioithieu"));
                    sp.setSukien(rs.getString("sukien"));
                    sp.setMaPK(rs.getInt("mapk"));
                    dssp.add(sp);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dssp;
    }
    public Vector<clsSanpham> LayPK(int mapk)
    {
        Vector<clsSanpham> dssp= new Vector<clsSanpham>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM tbsanpham where mapk='"+mapk+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())
                {
                    clsSanpham sp = new clsSanpham();
                    sp.setMasp(rs.getInt("masp"));
                    sp.setTensp(rs.getString("tensp"));
                    sp.setGia(rs.getDouble("gia"));
                    sp.setAnh(rs.getString("anh"));
                    sp.setGioithieu(rs.getString("gioithieu"));
                    sp.setSukien(rs.getString("sukien"));
                    sp.setMaPK(rs.getInt("mapk"));
                    dssp.add(sp);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dssp;
    }

    public clsSanpham LaySP(int masp) {
        clsSanpham dssp = new clsSanpham();
        Connection cnn = Database.KetnoiCSDL();
        if (cnn != null) {
            String sql = "SELECT * FROM tbsanpham where masp='" + masp + "'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next()) {
                    //clsSanpham dssp = new clsSanpham();
                    dssp.setMasp(rs.getInt("masp"));
                    dssp.setTensp(rs.getString("tensp"));
                    dssp.setGia(rs.getDouble("gia"));
                    dssp.setAnh(rs.getString("anh"));
                    dssp.setGioithieu(rs.getString("gioithieu"));
                    dssp.setSukien(rs.getString("sukien"));
                    dssp.setMaPK(rs.getInt("mapk"));

                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dssp;
    }

    public int ThemSP(clsSanpham sp) {
        Connection cnn = Database.KetnoiCSDL();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO tbsanpham VALUES(?,?,?,?,?,?,?)";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(1, sp.getMasp());
                stm.setString(2, sp.getTensp());
                stm.setDouble(3, sp.getGia());
                stm.setString(4, sp.getAnh());
                stm.setString(5, sp.getGioithieu());
                stm.setString(6, sp.getSukien());
                stm.setInt(7, sp.getMaPK());
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

    public int XoaSP(int masp) {
        Connection cnn = Database.KetnoiCSDL();
        if (cnn == null) {
            return -1;
        }else
        {
            String sql = "DELETE FROM tbsanpham WHERE masp=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setInt(1, masp);
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

    public int SuaSP(clsSanpham sp) {
        Connection cnn = Database.KetnoiCSDL();
        if (cnn == null) {
            return -1;
        } else {
            String sql
                    = "UPDATE tbsanpham SET tensp=?,gia=?,anh=?,gioithieu=?,sukien=?,mapk=? WHERE masp=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, sp.getTensp());
                stm.setDouble(2, sp.getGia());
                stm.setString(3, sp.getAnh());
                stm.setString(4, sp.getGioithieu());
                stm.setString(5, sp.getSukien());
                stm.setInt(6, sp.getMaPK());
                stm.setInt(7, sp.getMasp());
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

    public Vector<clsSanpham> TimKiemSP(String ten) {
        Vector<clsSanpham> dsSP = new Vector<clsSanpham>();
        Connection cnn = Database.KetnoiCSDL();
        if (cnn != null) {
            String sql = "SELECT * FROM tbsanpham WHERE tensp like '%" + ten + "%'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsSanpham sp = new clsSanpham();
                    sp.setMasp(rs.getInt("masp"));
                    sp.setTensp(rs.getString("tensp"));
                    sp.setGia(rs.getDouble("gia"));
                    sp.setAnh(rs.getString("anh"));
                    sp.setGioithieu(rs.getString("gioithieu"));
                    sp.setGioithieu(rs.getString("sukien"));
                    sp.setMaPK(rs.getInt("mapk"));
                    dsSP.add(sp);

                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dsSP;
    }
    //Lấy danh sách sản phẩm phân trang
    public Vector<clsSanpham> getListProductByNav(int mapk, int firstResult,int maxResult){
        Vector<clsSanpham> dssp= new Vector<clsSanpham>();
        Connection cnn = Database.KetnoiCSDL();
        if (cnn != null) {
            String sql = "SELECT * FROM tbsanpham where mapk='" + mapk + "' limit ?,?";
            try {
                  PreparedStatement ps = cnn.prepareCall(sql);
                  ps.setInt(1, firstResult);
                  ps.setInt(2, maxResult);
                  ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    clsSanpham sp = new clsSanpham();
                    sp.setMasp(rs.getInt("masp"));
                    sp.setTensp(rs.getString("tensp"));
                    sp.setGia(rs.getDouble("gia"));
                    sp.setAnh(rs.getString("anh"));
                    sp.setGioithieu(rs.getString("gioithieu"));
                    sp.setSukien(rs.getString("sukien"));
                    sp.setMaPK(rs.getInt("mapk"));
                    dssp.add(sp);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return dssp;
    }
    //Tính tổng sản phẩm
    public int countProductCategory(int mapk){
        Connection cnn = Database.KetnoiCSDL();
        int count = 0;
        if (cnn != null) {
            String sql = "SELECT count(masp) FROM tbsanpham where mapk='" + mapk + "'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while (rs.next()) {
                    count = rs.getInt(1);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbsanpham.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return count;
    }
//    public static void main(String[] args) {
//        tbsanpham sp = new tbsanpham();
//        System.out.println(sp.getListProductByNav(0,8,19));
//    }
}
