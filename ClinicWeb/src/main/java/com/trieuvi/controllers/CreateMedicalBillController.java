/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.service.CustomerScheService;
import com.trieuvi.service.MedicalBillDetailService;
import com.trieuvi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Star
 */
@Controller
@RequestMapping("/")
public class CreateMedicalBillController {
    @Autowired
    private CustomerScheService customerScheService;
    
    @Autowired
    private MedicalBillDetailService medicalBillDetailService;

    @Autowired
    private UserService userService;
    
    @GetMapping("/medicalBill")
    public String list(Model model, @RequestParam(value = "kw", required = false, defaultValue = "") String kw) {
        model.addAttribute("customerSche", this.customerScheService.getCustomerSches());
        model.addAttribute("user", this.userService.getUser());
        model.addAttribute("users", this.userService.getUser(kw));
        model.addAttribute("customers", this.userService.getCustomerBykw(kw));
        model.addAttribute("medicalBillInfo", new MedicalBill());

        return "medicalBill";
    }
    
    
    @PostMapping("/medicalBill")
    public String createMedicalBill(Model model, @ModelAttribute(value = "medicalBillInfo") MedicalBill m){
        String errMsg = "";
        System.out.println(m.getId());
            if(this.medicalBillDetailService.addMedicalBill(m) == true){
                return "redirect:/payment";
            }else
                errMsg = "Đa xay ra loi!!!";
        
        model.addAttribute("errMsg", errMsg);
        
        return "medicalBill";
    }
    
}
