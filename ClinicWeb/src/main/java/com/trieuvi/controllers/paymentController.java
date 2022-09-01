/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.service.MedicalBillDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
}
