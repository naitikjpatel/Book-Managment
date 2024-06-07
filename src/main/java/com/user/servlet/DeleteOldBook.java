/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.user.servlet;

import com.DAO.BookDAOImpl;
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
@WebServlet("/delete_old_book")
public class DeleteOldBook extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String em = req.getParameter("em");
            int id = Integer.parseInt(req.getParameter("id"));
            BookDAOImpl dao = new BookDAOImpl();
            boolean f = dao.oldBookDelete(em,"Old",id);
            HttpSession session = req.getSession();
            if(f){
                session.setAttribute("succMsg", "Old Book Deleted Successfully");
                resp.sendRedirect("old_book.jsp");
            }else{
                session.setAttribute("succMsg", "Something Went Wrong");
                resp.sendRedirect("old_book.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
