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
public class clsDanhmuc {
    int danhmuc_id;
    String tendanhmuc;

    public clsDanhmuc() {
    }

    public clsDanhmuc(int danhmuc_id, String tendanhmuc) {
        this.danhmuc_id = danhmuc_id;
        this.tendanhmuc = tendanhmuc;
    }

    public int getDanhmuc_id() {
        return danhmuc_id;
    }

    public void setDanhmuc_id(int danhmuc_id) {
        this.danhmuc_id = danhmuc_id;
    }

    public String getTendanhmuc() {
        return tendanhmuc;
    }

    public void setTendanhmuc(String tendanhmuc) {
        this.tendanhmuc = tendanhmuc;
    }
    
    
}
