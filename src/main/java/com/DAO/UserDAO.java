/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.DAO;

import com.entity.User;

/**
 *
 * @author Smit Soni
 */
public interface UserDAO {
    public boolean userRegister(User us);
    public User login(String email,String password);
    public boolean checkPassword(int id,String ps);
    public boolean updateProfile(User us);
    public boolean checkUser(String em);
}
