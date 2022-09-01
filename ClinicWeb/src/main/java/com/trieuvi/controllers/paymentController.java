/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.pojos.MedicalBillDetail;
import com.trieuvi.service.MedicalBillDetailService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Star
 */
@Controller
public class paymentController {
    @Autowired
    private MedicalBillDetailService medicalBillDetailService;
    
     @GetMapping("/payment")
    public String list(Model model) {
         model.addAttribute("user", this.medicalBillDetailService.getMedicalBillDetail());
        
        return "payment";
    }
    
    @PostMapping("/payment")
    public String add(@ModelAttribute(value = "medicalBillDetail") @Valid MedicalBillDetail m, BindingResult r) {
        if (r.hasErrors()) {
            return "payment";
        }
        if (this.medicalBillDetailService.addMedicalBillDetail(m) == true)
            return "redirect:/payment";
        
        return "payment";
        
        
    }
}
