/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.Timestamp;

/**
 *
 * @author Hoàng Kim Tới
 */
public class clsHoadon {
    private long billID;
    private  String username;
    private double total;
    private String payment;
    private String address;
    private Timestamp date;

    public clsHoadon() {
    }

    public clsHoadon(long billID, String username, double total, String payment, String address, Timestamp date) {
        this.billID = billID;
        this.username = username;
        this.total = total;
        this.payment = payment;
        this.address = address;
        this.date = date;
    }

    public long getBillID() {
        return billID;
    }

    public void setBillID(long billID) {
        this.billID = billID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    
}
