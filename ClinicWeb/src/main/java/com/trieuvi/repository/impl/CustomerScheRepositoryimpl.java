/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository.impl;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.repository.CustomerScheRepository;
import java.util.List;
import javax.persistence.Query;
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
public class CustomerScheRepositoryimpl implements CustomerScheRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<CustomerSche> getCustomerSches(){
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From CustomerSche");
        return q.getResultList();
    }

    @Override
    public List<MedicalBill> getMedicalBill() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From MedicalBill");
        return q.getResultList();
    }
    
}
