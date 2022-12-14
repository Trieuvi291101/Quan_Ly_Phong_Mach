/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service.impl;

import com.cloudinary.utils.ObjectUtils;
import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.pojos.MedicalBillDetail;
import com.trieuvi.pojos.User;
import com.trieuvi.repository.MedicalBillDetailRepository;
import com.trieuvi.service.MedicalBillDetailService;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Star
 */
@Service
@Transactional
public class MedicalBillDetailServiceImpl implements MedicalBillDetailService{
    @Autowired
    private MedicalBillDetailRepository medicalBillDetailRepository;

    @Override
    public List<MedicalBillDetail> getMedicalBillDetail() {
        return this.medicalBillDetailRepository.getMedicalBillDetail();
    }

    @Override
    public boolean addMedicalBillDetail(MedicalBillDetail m) {
        
       return this.medicalBillDetailRepository.addMedicalBillDetail(m);
    }

    @Override
    public boolean addMedicalBill(MedicalBill mb) {
        
        return this.medicalBillDetailRepository.addMedicalBill(mb);
    }

}
