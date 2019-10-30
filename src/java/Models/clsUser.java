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
public class clsUser {
    private int id;
    private String username;
    private String password;
    private String hoten;
    private String diachi;
    private int sdt;
    private boolean gioitinh;
    private String chucvu;
    public clsUser(){
        
    }
    public clsUser(int id, String username,String password,String hoten,String diachi,int sdt,boolean  gioitinh, String chucvu){
        this.id=id;
        this.username=username;
        this.password=password;
        this.hoten=hoten;
        this.diachi=diachi;
        this.sdt=sdt;
        this.gioitinh=gioitinh;
        this.chucvu=chucvu;
    }
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id=id;
    }
    public String getUsername(){
        return username;
    }
    public void setUsername(String username){
        this.username=username;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password=password;
    }
    public String getHoten(){
        return hoten;
    }
    public void setHoten(String hoten){
        this.hoten=hoten;
    }
    public String getDiachi(){
        return diachi;
    }
    public void setDiachi(String diachi){
        this.diachi=diachi;
    }
    public int getSDT(){
        return sdt;
    }
    public void setSDT(int sdt){
        this.sdt=sdt;
    }
    public boolean getGioitinh(){
        return gioitinh;
    }
    public void setGioitinh(boolean gioitinh){
        this.gioitinh=gioitinh;
    }
    public String getChuvu(){
        return chucvu;
    }
    public void setChuvu(String chucvu){
        this.chucvu=chucvu;
    }
    public String toString(){
        return username;
    }
}
