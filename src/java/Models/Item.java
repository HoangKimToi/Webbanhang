/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.Vector;

/**
 *
 * @author Hoàng Kim Tới
 */
public class Item {
    private clsSanpham product;
    private int quantity;

    public Item() {
    }

    
    public Item(clsSanpham product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public clsSanpham getProduct() {
        return product;
    }

    public void setProduct(clsSanpham product) {
        this.product = product;
    }

    public int getQuatity() {
        return quantity;
    }

    public void setQuatity(int quantity) {
        this.quantity = quantity;
    }
    
    
}
