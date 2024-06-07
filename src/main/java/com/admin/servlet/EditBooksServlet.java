/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin.servlet;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author Smit Soni
 */
@WebServlet("/editbooks")
public class EditBooksServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String bookName = req.getParameter("bname");
            String author = req.getParameter("author");
            String price = req.getParameter("price");
            String status = req.getParameter("status");
            BookDtls b = new BookDtls();
            b.setBookId(id);
            b.setBookName(bookName);
            b.setAuthor(author);
            b.setPrice(price);
            b.setStatus(status);
            
            BookDAOImpl dao = new BookDAOImpl();
            boolean f = dao.updateEditBooks(b);
            HttpSession session = req.getSession();
            if(f){
                session.setAttribute("succMsg", "Book Updated Successfully");
                resp.sendRedirect("admin/all_books.jsp");
            }else{
                session.setAttribute("failedMsg", "Something Went Wrong");
                resp.sendRedirect("admin/all_books.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
