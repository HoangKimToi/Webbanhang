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
public class clsChitiethoadon {
    private int billDetailID;
    private long billID;
    private int masp;
    private double gia;
    private int quantity;

    public clsChitiethoadon() {
    }

    public clsChitiethoadon(int billDetailID, long billID, int masp, double gia, int quantity) {
        this.billDetailID = billDetailID;
        this.billID = billID;
        this.masp = masp;
        this.gia = gia;
        this.quantity = quantity;
    }

    public int getBillDetailID() {
        return billDetailID;
    }

    public void setBillDetailID(int billDetailID) {
        this.billDetailID = billDetailID;
    }

    public long getBillID() {
        return billID;
    }

    public void setBillID(long billID) {
        this.billID = billID;
    }

    public int getMasp() {
        return masp;
    }

    public void setMasp(int masp) {
        this.masp = masp;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
}
