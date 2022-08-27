/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.service.CustomerScheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Star
 */
@Controller
public class CustomerScheController {
    @Autowired
    private CustomerScheService customerScheService;
    
    @GetMapping("/customerSche")
    public String list(Model model) {
         model.addAttribute("customeSche", this.customerScheService.getCustomerSches());
        
        return "customerSche";
    }
}