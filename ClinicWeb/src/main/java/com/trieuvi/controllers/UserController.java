/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Star
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;
//    
//    @GetMapping("/account")
//    public String productDetails(Model model, @PathVariable(value = "id") int id) {
//        model.addAttribute("userid", this.userService.getUserById(id));
//        return "account";
//    }
    
    @GetMapping("/account")
    public String list(Model model) {
         model.addAttribute("user", this.userService.getUser());
         model.addAttribute("userId", this.userService.getUserById(1));
        
        return "account";
    }
}
