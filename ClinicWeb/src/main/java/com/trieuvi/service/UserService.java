/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service;

import com.trieuvi.pojos.User;
import java.util.List;

/**
 *
 * @author Star
 */
public interface UserService {  
    User getUserById(int id);
    List<User> getUser();
    
}
