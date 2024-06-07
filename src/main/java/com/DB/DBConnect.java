/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Smit Soni
 */
public class DBConnect {
    private static Connection conn;
    public static Connection getConn(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook_app","root","");
        }catch(Exception e){
            e.printStackTrace();
        }
        return conn;
    }

}
