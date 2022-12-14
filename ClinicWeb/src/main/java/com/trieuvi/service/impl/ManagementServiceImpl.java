/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service.impl;

import com.trieuvi.pojos.Medicine;
import com.trieuvi.repository.ManagementRepository;
import com.trieuvi.service.ManagementService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Star
 */
@Service
@Transactional
public class ManagementServiceImpl implements ManagementService{
    
    @Autowired
    private ManagementRepository managementRepository;


    @Override
    public boolean addMedicine(Medicine p) {
        return this.managementRepository.addMedicine(p);
    }

    @Override
    public boolean deleteMedicine(Medicine me) {
         return this.managementRepository.deleteMedicine(me);
    }

    @Override
    public List<Medicine> getMedicine(String kw) {
        return this.managementRepository.getMedicine(kw);
    }
    
}
