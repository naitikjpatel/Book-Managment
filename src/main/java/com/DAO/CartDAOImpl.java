/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

import com.entity.BookDtls;
import com.entity.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Smit Soni
 */
public class CartDAOImpl implements CartDAO{
    private Connection conn;

    public CartDAOImpl() {
        this.conn = conn;
    }

    @Override
    public boolean addCart(Cart c) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        boolean f = false;
        try {
            String sql = "insert into cart(bid,uid,bookName,author,price,total_price) values(?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, c.getBid());
            ps.setInt(2, c.getUserId());
            ps.setString(3, c.getBookName());
            ps.setString(4, c.getAuthor());
            ps.setDouble(5, c.getPrice());
            ps.setDouble(6, c.getTotalPrice());
            
            int i = ps.executeUpdate();
            if(i==1){
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<Cart> getBookByUser(int userId) {
        List<Cart> list = new ArrayList<Cart>();
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        Cart c = null;
        double totalPrice = 0;
        try {
            String sql = "select * from cart where uid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                c = new Cart();
                c.setCid(rs.getInt(1));
                c.setBid(rs.getInt(2));
                c.setUserId(rs.getInt(3));
                c.setBookName(rs.getString(4));
                c.setAuthor(rs.getString(5));
                c.setPrice(rs.getDouble(6));
                totalPrice = totalPrice + rs.getDouble(7);
                c.setTotalPrice(totalPrice);
                list.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean deleteBook(int bid,int uid,int cid) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        boolean f = false;
        try {
            String sql = "delete from cart where bid=? and uid=? and cid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, bid);
            ps.setInt(1, uid);
            ps.setInt(3, cid);
            int i = ps.executeUpdate();
            if(i==1){
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
    
}
