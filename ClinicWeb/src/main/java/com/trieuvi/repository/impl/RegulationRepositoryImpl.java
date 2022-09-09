/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository.impl;

import com.trieuvi.pojos.Regulation;
import com.trieuvi.repository.RegulationRepository;
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
public class RegulationRepositoryImpl implements RegulationRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Regulation> getRegulations(){
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Regulation");
        return q.getResultList();
    }
}
