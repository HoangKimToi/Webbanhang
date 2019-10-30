/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Hoàng Kim Tới
 */
public class clsPhukien {
    int maphukien;
    String tenphukien;
    double gia;
    String anh;
    String gioithieu;
    String sukien;
    public clsPhukien(){
        maphukien=0;
        tenphukien="";
        gia=0;
        anh="";
        gioithieu="";
        sukien="";
    }
    public clsPhukien(int m,String t,double g, String a, String gt,String sk){
        maphukien=m;
        tenphukien=t;
        gia=g;
        anh=a;
        gioithieu=gt;
        sukien=sk;
    }
    public int getMapk(){
        return maphukien;
    }
    public void setMapk(int m){
        maphukien=m;
    }
    public String getTenpk(){
        return tenphukien;
    }
    public void setTenpk(String t){
        tenphukien=t;
    }
    public double getGia(){
        return gia;
    }
    public void setGia(double g){
        gia=g;
    }
    public String getAnh(){
        return anh;
    }
    public void setAnh(String a){
        anh=a;
    }
    public String getGioithieu(){
        return gioithieu;
    }
    public void setGioithieu(String gt){
        gioithieu=gt;
    }
    public String getSukien(){
        return sukien;
    }
    public void setSukien(String sk){
        sukien=sk;
    }
    public String toString(){
        return tenphukien;
    }
}
