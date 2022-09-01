/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service.impl;

import com.trieuvi.pojos.MedicalBillDetail;
import com.trieuvi.repository.MedicalBillDetailRepository;
import com.trieuvi.service.MedicalBillDetailService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Star
 */
@Service
public class MedicalBillDetailServiceImpl implements MedicalBillDetailService{
    @Autowired
    private MedicalBillDetailRepository medicalBillDetailRepository;

    @Override
    public List<MedicalBillDetail> getMedicalBillDetail() {
        return this.medicalBillDetailRepository.getMedicalBillDetail();
    }

}
