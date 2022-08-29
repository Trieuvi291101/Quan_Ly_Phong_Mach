/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service.impl;

import com.trieuvi.pojos.User;
import com.trieuvi.repository.UserRepository;
import com.trieuvi.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Star
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;
    
    @Override
    public User getUserById(int id) {
        return this.userRepository.getUserById(id);
    }

    @Override
    public List<User> getUser() {
        return this.userRepository.getUser();
    }
    
    @Override
    public List<User> getUser(String kw) {
        return this.userRepository.getUser(kw);
    }

}

