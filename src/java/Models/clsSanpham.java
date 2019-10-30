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
public class clsSanpham {
    int masp;
    String tensp;
    double gia;
    String anh;
    String gioithieu;
    String sukien;
    int mapk;
    public clsSanpham(){
        masp=0;
        tensp="";
        gia=0;
        anh="";
        gioithieu="";
        sukien="";
        mapk=0;
    }
    public clsSanpham(int m,String t,double g, String a, String gt,String sk,int mpk){
        masp=m;
        tensp=t;
        gia=g;
        anh=a;
        gioithieu=gt;
        sukien = sk;
        mapk = mpk;
    }
    public int getMasp(){
        return masp;
    }
    public void setMasp(int m){
        masp=m;
    }
    public String getTensp(){
        return tensp;
    }
    public void setTensp(String t){
        tensp=t;
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
    public int getMaPK(){
        return mapk;
    }
    public void setMaPK(int mpk){
        mapk=mpk;
    }
    public String toString(){
        return tensp;
    }
}
