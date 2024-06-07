/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.user.servlet;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;
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
@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String password = req.getParameter("password");
            User us = new User();
            us.setId(id);
            us.setName(name);
            us.setEmail(email);
            us.setPhno(phno);
            HttpSession session = req.getSession();
            UserDAOImpl dao = new UserDAOImpl();
            boolean f = dao.checkPassword(id, password);
            if(f){
                boolean f2 = dao.updateProfile(us);
                if(f2){
                    session.setAttribute("succMsg", "Profile Updated Successfully");
                    resp.sendRedirect("edit_profile.jsp");
                }else{
                    session.setAttribute("failedMsg", "Something Wrong on Server");
                    resp.sendRedirect("edit_profile.jsp");
                }
            }else{
                    session.setAttribute("failedMsg", "Your Password is Incorrect");
                    resp.sendRedirect("edit_profile.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
