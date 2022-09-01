/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author Star
 */
@Configuration
@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.trieuvi.controllers",
    "com.trieuvi.repository",
    "com.trieuvi.pojos",
    "com.trieuvi.service"
})
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth)
            throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
//
//    @Bean
//    public Cloudinary cloudinary() {
//        Cloudinary cloudinary
//                = new Cloudinary(ObjectUtils.asMap(
//                        "cloud_name", "i-h-c-m",
//                        "api_key", "482771674861723",
//                        "api_secret", "UcuyEfGi4mWdqTG2f1F1e_jfJUE",
//                        "secure", true));
//        return cloudinary;
//    }
    
    

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("password");

        http.formLogin().defaultSuccessUrl("/")
                .failureUrl("/login?error");

        http.logout().logoutSuccessUrl("/login");

        http.exceptionHandling().accessDeniedPage("/login?accessDenied");

        http.authorizeRequests().antMatchers("/").permitAll()
                .antMatchers("/appointment").access("hasRole('NURSE')")
//                .antMatchers("/createMedicalBill").access("hasRole('DOCTOR')")
//                .antMatchers("/**/management").access("hasAnyRole('ADMIN', 'SUPERADMIN')")
//                .antMatchers("/**/regulation").access("hasAnyRole('ADMIN', 'SUPERADMIN')")
//                .antMatchers("/stats").access("hasAnyRole('ADMIN', 'SUPERADMIN')")
//                .antMatchers("/customerSche").access("hasAnyRole('NURSE', 'DOCTOR')")
//                .antMatchers("/payment").access("hasAnyRole('NURSE', 'DOCTOR')")
//                .antMatchers("/regulation").access("hasRole('SUPERADMIN')")
                ;
                
        http.csrf().disable();

    }
}
