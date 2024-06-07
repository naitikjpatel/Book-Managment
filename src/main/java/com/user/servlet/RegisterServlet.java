/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.user.servlet;

import com.DAO.UserDAOImpl;

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
@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String password = req.getParameter("password");
            String check = req.getParameter("check");
            
            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhno(phno);
            us.setPassword(password);
            
            UserDAOImpl dao = new UserDAOImpl();
            HttpSession session = req.getSession();
            
            if(check!=null){
//                UserDAOImpl dao = new UserDAOImpl();
                boolean f2 = dao.checkUser(email);
                if(f2){
                    boolean f = dao.userRegister(us);
                    if(f){
                        System.out.println("User Register Success");
                        session.setAttribute("succMsg", "Registration Successful");
                        resp.sendRedirect("register.jsp");
                    }else{
                        System.out.println("Something Went Wrong");
                        session.setAttribute("failedMsg", "Something Went Wrong");
                        resp.sendRedirect("register.jsp");
                    }
                }
            else{
                        session.setAttribute("failedMsg", "User Already Exist");
                        resp.sendRedirect("register.jsp");
                }
           }
            else{
                System.out.println("Please Agree Terms & Conditions");
                    session.setAttribute("failedMsg", "Please Agree Terms & Conditions");
                    resp.sendRedirect("register.jsp");
            }


            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
