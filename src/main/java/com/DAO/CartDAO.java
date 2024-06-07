/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.DAO;

import com.entity.BookDtls;
import com.entity.Cart;
import java.util.List;

/**
 *
 * @author Smit Soni
 */
public interface CartDAO {
    public boolean addCart(Cart c);
    public List<Cart> getBookByUser(int userId);
    public boolean deleteBook(int bid,int uid,int cid);
}
