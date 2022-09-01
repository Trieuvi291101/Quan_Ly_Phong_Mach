/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.pojos.Medicine;
import com.trieuvi.service.CustomerScheService;
import com.trieuvi.service.ManagementService;
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
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 *
 * @author Star
 */
@Controller
public class ManagementController {
    @Autowired
    private CustomerScheService customerScheService;
    
    @Autowired
    private ManagementService managementService;

    @GetMapping("/management")
    public String list(Model model) {
        model.addAttribute("customerSche", this.customerScheService.getCustomerSches());
        model.addAttribute("medicalBill", this.customerScheService.getMedicalBill());

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
    
    @DeleteMapping("/management")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteProduct(@PathVariable(value = "medicineId") int id) {
        this.managementService.deleteMedicine(id);
    }
}
