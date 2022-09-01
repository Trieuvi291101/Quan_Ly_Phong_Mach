/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository;

import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.pojos.MedicalBillDetail;
import java.util.List;

/**
 *
 * @author Star
 */
public interface MedicalBillDetailRepository {
    List<MedicalBillDetail> getMedicalBillDetail();
    boolean addMedicalBillDetail(MedicalBillDetail m);
}
