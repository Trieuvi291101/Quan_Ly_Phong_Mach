/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.service.CustomerScheService;
import com.trieuvi.service.UserService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Star
 */
@Controller
@ControllerAdvice
public class IndexController {
    @Autowired
    private CustomerScheService customerScheService;
    
    @Autowired
    private UserService userService;
    
    @ModelAttribute
    public void commonAttr(Model model, HttpSession session) {
         model.addAttribute("userAttr", this.userService.getUser());
         model.addAttribute("customerAttr", this.userService.getCustomers());
         model.addAttribute("currentUser", session.getAttribute("currentUser"));
    } 
            
    @RequestMapping("/")
    public String index(Model model) {
//       model.addAttribute("customeSches", this.customerScheService.getCustomerSches());
        
    return "index";
    }
}
