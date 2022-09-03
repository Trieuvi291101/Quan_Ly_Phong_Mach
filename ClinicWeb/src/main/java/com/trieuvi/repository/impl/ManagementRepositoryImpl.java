/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository.impl;

import com.trieuvi.pojos.Medicine;
import com.trieuvi.pojos.User;
import com.trieuvi.repository.ManagementRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Star
 */
@Repository
@PropertySource("classpath:databases.properties")
@Transactional
public class ManagementRepositoryImpl implements ManagementRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public boolean addMedicine(Medicine p) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(p);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean deleteMedicine(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Medicine p = session.get(Medicine.class, id);
            session.delete(p);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public List<Medicine> getMedicine(String kw) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Medicine> q = b.createQuery(Medicine.class);
        Root root = q.from(Medicine.class);
        q = q.select(root); 
        
        if(!kw.isEmpty() && kw !=null){
            Predicate p1 = b.like(root.get("id").as(String.class), String.format("%%%s%%", kw));
            Predicate p2 = b.like(root.get("name").as(String.class), String.format("%%%s%%", kw));
            q = q.where(b.or(p1,p2));
        }
        
        Query query = session.createQuery(q);
        return query.getResultList();
    }
    
}
