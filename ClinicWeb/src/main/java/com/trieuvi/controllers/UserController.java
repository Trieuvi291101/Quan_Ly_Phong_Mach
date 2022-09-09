/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.controllers;

import com.trieuvi.pojos.User;
import com.trieuvi.service.UserService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Star
 */
@Controller
@RequestMapping("/")
public class UserController {
    @Autowired
    private UserService userDetailsService;
    
    
//    
//    @GetMapping("/account")
//    public String productDetails(Model model, @PathVariable(value = "id") int id) {
//        model.addAttribute("userid", this.userService.getUserById(id));
//        return "account";
//    }
    
    @GetMapping("/account")
    public String list(Model model, HttpSession session) {
         model.addAttribute("user", this.userDetailsService.getUser());
         model.addAttribute("userId", this.userDetailsService.getUserById(1));
         model.addAttribute("users", new User());
         model.addAttribute("account", new User());
         model.addAttribute("currentUser", session.getAttribute("currentUser"));
        
        return "account";
    }
    
    
    @PostMapping("/account")
    public String account(Model model, @ModelAttribute(value = "account") User user){
        String errMsg = "";
            if(this.userDetailsService.updateUser(user) == true){
                return "redirect:/account";
            }else
                errMsg = "Đa xay ra loi!!!";
        
        model.addAttribute("errMsg", errMsg);
        
        return "account";
    }
    
    @GetMapping("/login")
    public String login(){
        return "login";
    }
    
    @GetMapping("/register")
    public String register(Model model){
        model.addAttribute("user", new User());
        return "register";
    }
    
    
    @RequestMapping("/management/removes/{userId}")
    public String Delete(@PathVariable(value = "userId") User u){
        
        if (this.userDetailsService.deleteUser(u) == true)
            return "redirect:/management";
        
        return "management/removes/userId";
    }
    
    
    @PostMapping("/register")
    public String register(Model model, @ModelAttribute(value = "user") User user){
        String errMsg = "";
        if(user.getPassword().equals(user.getConfirmPassword())){
            if(this.userDetailsService.addUser(user) == true){
                return "redirect:/login";
            }else
                errMsg = "Đa xay ra loi!!!";
        }else{
            errMsg = "Mat khau khong khop!!!";
        }
        model.addAttribute("errMsg", errMsg);
        
        return "register";
    }
}
