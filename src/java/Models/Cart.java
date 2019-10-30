/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Hoàng Kim Tới
 */
public class Cart {
    private HashMap<Integer, Item> cartItems;

    public Cart() {
        cartItems = new HashMap<>();
    }
    public Cart(HashMap<Integer, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public HashMap<Integer, Item> getCartItems() {
        return cartItems;
    }

    public void setCartItems(HashMap<Integer, Item> cartItems) {
        this.cartItems = cartItems;
    }
    //Thêm sản phẩm vào giỏ hàng
    public void plustToCart(Integer key, Item item){
        boolean check = cartItems.containsKey(key);
        if (check) {
            int quantity_old = item.getQuatity();
            item.setQuatity(quantity_old + 1);
            cartItems.put(key, item);
        }else{
            cartItems.put(key, item);
        }
    }
     public void updateToCart(Integer key, Item item){
        boolean check = cartItems.containsKey(key);
        if (check) {
            int quantity_old = item.getQuatity();
            item.setQuatity(quantity_old);
            cartItems.put(key, item);
        }else{
            //cartItems.put(key, item);
        }
    }
    public void subToCart(Integer key, Item item){
        boolean check = cartItems.containsKey(key);
        if (check) {
            int quantity_old = item.getQuatity();
            if (quantity_old <= 1) {
                cartItems.remove(key);
            }else{
                item.setQuatity(quantity_old -1);
                cartItems.put(key, item);
            }
        }
    }
    public void removeToCart(Integer key){
        boolean check = cartItems.containsKey(key);
        if (check) {
            cartItems.remove(key);
        }
    }
    public int countItem(){
        return cartItems.size();
    }
    public double totalCart(){
        double count = 0;
        for (Map.Entry<Integer, Item>list : cartItems.entrySet()) {
            count += list.getValue().getProduct().getGia() * list.getValue().getQuatity();
        }
        return count;
    }
}
