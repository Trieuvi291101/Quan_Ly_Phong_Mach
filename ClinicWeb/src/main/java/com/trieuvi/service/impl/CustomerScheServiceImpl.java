/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service.impl;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.repository.CustomerScheRepository;
import com.trieuvi.service.CustomerScheService;
import java.util.Date;
import java.util.List;
import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Star
 */
@Service
@Transactional
public class CustomerScheServiceImpl implements CustomerScheService {

    @Autowired
    private CustomerScheRepository customerScheRepository;

    @Override
    public List<CustomerSche> getCustomerSches() {
        return this.customerScheRepository.getCustomerSches();
    }

    @Override
    public List<MedicalBill> getMedicalBill() {
        return this.customerScheRepository.getMedicalBill();
    }

    @Override
    public List<CustomerSche> getCustomerFormed() {
        return this.customerScheRepository.getCustomerFormed();
    }

    @Override
    public boolean addCustomerSche(CustomerSche cus) {
        cus.setFormedSche(false);
        cus.setExamined(false);

        return this.customerScheRepository.addCustomerSche(cus);
    }

}
