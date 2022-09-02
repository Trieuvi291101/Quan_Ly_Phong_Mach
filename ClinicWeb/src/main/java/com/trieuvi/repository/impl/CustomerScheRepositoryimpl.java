/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository.impl;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.pojos.User;
import com.trieuvi.repository.CustomerScheRepository;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
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
    
    private CustomerScheRepository CustomerScheRepository;
    
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

    @Override
    public List<CustomerSche> getCustomerFormed() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        
        Root root = q.from(User.class);
        Root root1 = q.from(CustomerSche.class);
        
        q = q.where(b.equal(root.get("id"), root1.get("customerId")));
        q.multiselect(root1.get("id"), root.get("lastName"), root.get("firstName"), root1.get("examined"), root.get("phoneNumber"));
        
        Query query = session.createQuery(q);
        return query.getResultList();
    }

    @Override
    public boolean addCustomerSche(CustomerSche cus) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(cus);
            return true;
        }catch(HibernateException ex){
            System.err.println(ex.getMessage());
        }
        return this.CustomerScheRepository.addCustomerSche(cus);
    }
}
