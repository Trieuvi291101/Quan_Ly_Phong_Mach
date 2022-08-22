/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service.impl;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.repository.CustomerScheRepository;
import com.trieuvi.service.CustomerScheService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Star
 */
@Service
public class CustomerScheServiceImpl implements CustomerScheService{
    @Autowired
    private CustomerScheRepository customerScheRepository;

    @Override
    public List<CustomerSche> getCustomerSches() {
        return this.customerScheRepository.getCustomerSches();
    }
    
}
