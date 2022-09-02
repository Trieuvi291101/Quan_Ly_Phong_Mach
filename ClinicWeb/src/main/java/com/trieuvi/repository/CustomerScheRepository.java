/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.pojos.MedicalBill;
import java.util.List;

/**
 *
 * @author Star
 */
public interface CustomerScheRepository {
    List<CustomerSche> getCustomerSches();
    List<CustomerSche> getCustomerFormed();
    List<MedicalBill> getMedicalBill();
    boolean addCustomerSche(CustomerSche cus);
}
