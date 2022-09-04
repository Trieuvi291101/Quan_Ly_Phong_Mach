/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.pojos.Medicine;
import com.trieuvi.service.CustomerScheService;
import com.trieuvi.service.ManagementService;
import com.trieuvi.service.UserService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author Star
 */
@Controller
@RequestMapping("/")
public class ManagementController {
    @Autowired
    private CustomerScheService customerScheService;
    
    @Autowired
    private ManagementService managementService;
    
    @Autowired
    private UserService userService;

    @GetMapping("/management")
    public String list(Model model, @RequestParam(value = "kw", required = false, defaultValue = "") String kw, @RequestParam(value = "kw1", required = false, defaultValue = "") String kw1) {
        model.addAttribute("customerSche", this.customerScheService.getCustomerSches());
        model.addAttribute("medicalBill", this.customerScheService.getMedicalBill());
        model.addAttribute("medicine", this.managementService.getMedicine(kw));
        model.addAttribute("users", this.userService.getUser(kw1));

        return "management";
    }
    
    @PostMapping("/management")
    public String add(@ModelAttribute(value = "medicine") @Valid Medicine p, BindingResult r) {
        if (r.hasErrors()) {
            return "management";
        }
        
        if (this.managementService.addMedicine(p) == true)
            return "redirect:/";
        
        return "management";
    }
    
}
