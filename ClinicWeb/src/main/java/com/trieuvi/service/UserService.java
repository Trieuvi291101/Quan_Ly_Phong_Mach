/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service;

import com.trieuvi.pojos.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author Star
 */
public interface UserService extends UserDetailsService{  
    User getUserById(int id);
    boolean addUser(User user);
    boolean updateUser(User user);
    boolean deleteUser(User me);
    List<User> getusers(String username);
    List<User> getCustomer();
    List<User> getUser();
    List<User> getCustomerBykw(String kw);
    List<User> getUser(String kw);
    List<User> getCustomerWaiting();
    List<User> getCustomers();
    User getUserByUsername(String username);
}
