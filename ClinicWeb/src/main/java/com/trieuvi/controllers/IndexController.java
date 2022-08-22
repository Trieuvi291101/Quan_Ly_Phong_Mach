/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.service.CustomerScheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Star
 */
@Controller
public class IndexController {
    @Autowired
    private CustomerScheService customerScheService;
            
    @RequestMapping("/")
    public String index(Model model) {
       model.addAttribute("customeSches", this.customerScheService.getCustomerSches());
        
    return "index";
    }
}
