/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.DAO;

import com.entity.Book_Order;
import java.util.List;

/**
 *
 * @author Smit Soni
 */
public interface BookOrderDAO {
//    public int getOrderNo();
    public boolean saveOrder(List<Book_Order> blist);
    public List<Book_Order> getBook(String email);
    public List<Book_Order> getAllOrder();
}
