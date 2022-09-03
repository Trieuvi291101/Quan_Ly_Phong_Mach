/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository;

import com.trieuvi.pojos.User;
import java.util.List;

/**
 *
 * @author Star
 */
public interface UserRepository {
    User getUserById(int id);
    boolean addUser(User user);
    List<User> getusers(String username);
    List<User> getUser();
    List<User> getUser(String kw);
    List<User> getCustomerBykw(String kw);
    List<User> getCustomer();
    List<User> getCustomers();
    List<User> getCustomerWaiting();
    User getUserByUsername(String username);
}
