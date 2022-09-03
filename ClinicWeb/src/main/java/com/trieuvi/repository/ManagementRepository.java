/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository;

import com.trieuvi.pojos.Medicine;
import java.util.List;

/**
 *
 * @author Star
 */
public interface ManagementRepository {
    boolean addMedicine(Medicine p);
    boolean deleteMedicine(int id);
    List<Medicine> getMedicine(String kw);
}
