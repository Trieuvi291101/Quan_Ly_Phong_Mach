/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.service.RegulationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Star
 */
@Controller
@RequestMapping("/")
public class RegulationController {
    @Autowired
    private RegulationService regulationService;
    
    @GetMapping("/regulation")
    public String list(Model model) {
         model.addAttribute("regulation", this.regulationService.getRegulations());
        
        return "regulation";
    }
}
