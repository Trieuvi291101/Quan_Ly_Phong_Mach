/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.pojos.MedicalBill;
import java.util.List;

/**
 *
 * @author Star
 */
public interface CustomerScheService {
    List<CustomerSche> getCustomerSches();
    List<MedicalBill> getMedicalBill();
    List<CustomerSche> getCustomerFormed();
     boolean addCustomerSche(CustomerSche cus);
}
