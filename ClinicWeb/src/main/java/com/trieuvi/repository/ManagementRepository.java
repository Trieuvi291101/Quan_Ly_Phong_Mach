/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository;

import com.trieuvi.pojos.Medicine;

/**
 *
 * @author Star
 */
public interface ManagementRepository {
    boolean addMedicine(Medicine p);
    boolean deleteMedicine(int id);
}
