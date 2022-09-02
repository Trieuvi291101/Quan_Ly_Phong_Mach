/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.pojos.MedicalBillDetail;
import com.trieuvi.pojos.User;
import com.trieuvi.service.CustomerScheService;
import com.trieuvi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Star
 */
@Controller
@ControllerAdvice
public class AppointmentController {

    @Autowired
    private CustomerScheService customerScheService;

    @Autowired
    private UserService userService;
    
    @GetMapping("/appointment")
    public String list(Model model) {
        model.addAttribute("customerSche", this.customerScheService.getCustomerSches());
        model.addAttribute("user", this.userService.getUser());
        model.addAttribute("customerWaiting", this.userService.getCustomerWaiting());

        return "appointment";
    }
    
    @GetMapping("/formAppointment")
    public String list1(Model model) {
        model.addAttribute("customerSche", this.customerScheService.getCustomerSches());
        model.addAttribute("user", this.userService.getUser());
        model.addAttribute("customerWaiting", this.userService.getCustomerWaiting());
        model.addAttribute("customerSche", new CustomerSche());

        return "formAppointment";
    }
    
    @PostMapping("/formAppointment")
    public String formAppointment(@ModelAttribute(value = "customerSche") CustomerSche cus, BindingResult r){
        if (r.hasErrors()) {
            return "formAppointment";
        }
        
        if (this.customerScheService.addCustomerSche(cus) == true)
            return "redirect:/appointment";
        
        return "formAppointment";
    }

}
