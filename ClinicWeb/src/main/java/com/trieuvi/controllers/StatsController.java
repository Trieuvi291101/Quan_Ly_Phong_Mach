/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.service.StatsService;
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
public class StatsController {
    @Autowired
    private StatsService statsService;
    
    
    @GetMapping("/stats")
    public String totalPriceMonthStats(Model model) {
        model.addAttribute("stats", this.statsService.totalPriceMonthStats(null, null, null));
        model.addAttribute("examinationStats", this.statsService.examinationStats(null, null, null));
        return "stats";
    }
}
