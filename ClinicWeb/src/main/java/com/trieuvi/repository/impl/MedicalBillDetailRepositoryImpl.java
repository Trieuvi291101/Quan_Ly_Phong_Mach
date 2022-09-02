/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository.impl;

import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.pojos.MedicalBillDetail;
import com.trieuvi.repository.MedicalBillDetailRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Star
 */
@Repository
@Transactional
public class MedicalBillDetailRepositoryImpl implements MedicalBillDetailRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Autowired
    private MedicalBillDetailRepository medicalBillDetailRepository;
    
    @Override
    public List<MedicalBillDetail> getMedicalBillDetail() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From MedicalBillDetail");
        return q.getResultList();
    }

    @Override
    public boolean addMedicalBillDetail(MedicalBillDetail m) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(m);
            return true;
        }catch(HibernateException ex){
            System.err.println(ex.getMessage());
        } 
        return false;
    }

    @Override
    public boolean addMedicalBill(MedicalBill m) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(m);
            return true;
        }catch(HibernateException ex){
            System.err.println(ex.getMessage());
        }
        return this.medicalBillDetailRepository.addMedicalBill(m);
    }
    
}
