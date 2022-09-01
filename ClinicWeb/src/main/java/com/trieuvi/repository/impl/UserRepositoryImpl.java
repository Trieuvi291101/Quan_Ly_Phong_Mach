/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository.impl;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.pojos.MedicalBillDetail;
import com.trieuvi.pojos.User;
import com.trieuvi.repository.UserRepository;
import java.util.ArrayList;
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
public class UserRepositoryImpl implements UserRepository{  
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Autowired
    private UserRepository userRepository;

    @Override
    public User getUserById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(User.class, id);
    }

    @Override
    public List<User> getUser() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From User");
        return q.getResultList();
    }

    @Override
    public List<User> getUser(String kw) {
       Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<User> q = b.createQuery(User.class);
        Root root = q.from(User.class);
        q = q.select(root); 
        
        if(!kw.isEmpty() && kw !=null){
            Predicate p1 = b.like(root.get("phoneNumber").as(String.class), String.format("%%%s%%", kw));
            Predicate p2 = b.like(root.get("firstName").as(String.class), String.format("%%%s%%", kw));
            q = q.where(b.or(p1,p2));
        }
        
        Query query = session.createQuery(q);
        return query.getResultList();
    }

    @Override
    public List<User> getCustomer() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        
        Root root = q.from(User.class);
        Root root1 = q.from(CustomerSche.class);
        Root root2 = q.from(MedicalBill.class);
        
        q = q.where(b.equal(root.get("id"), root1.get("customerId")));
//        q = q.where(b.equal(root1.get("id"), root2.get("customerSche")));
        q.multiselect(root.get("id"), root.get("lastName"), root.get("firstName"),root.get("birthday"),
                root1.get("schedule"), root2.get("diagnosticDisease"));
        q.groupBy(root2.get("id"));
        
        Query query = session.createQuery(q);
        return query.getResultList();
    }
    
//    @Override
//    public List<User> getCustomer() {
//        Session session = this.sessionFactory.getObject().getCurrentSession();
//        CriteriaBuilder b = session.getCriteriaBuilder();
//        CriteriaQuery<User> q = b.createQuery(User.class);
//        Root root = q.from(User.class);
//        q = q.select(root); 
//        Predicate p = b.like(root.get("userRole").as(String.class), "CUSTOMER");
//        q = q.where(p);
//        Query query = session.createQuery(q);
//
//        return query.getResultList();
//    }

    @Override
    public List<User> getCustomerWaiting() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        
        Root root = q.from(User.class);
        Root root1 = q.from(CustomerSche.class);
        
        q = q.where(b.equal(root.get("id"), root1.get("customerId")));
        q.multiselect(root1.get("id"), root.get("lastName"), root.get("firstName"), root.get("birthday"),
                root.get("genderId") ,root.get("phoneNumber"), root1.get("formedSche"));
        
        Query query = session.createQuery(q);
        return query.getResultList();
    }

    @Override
    public List<User> getCustomerBykw(String kw) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<User> q = b.createQuery(User.class);
        Root root = q.from(User.class);
        q = q.select(root); 
        
        if(!kw.isEmpty() && kw !=null){
            Predicate p1 = b.like(root.get("phoneNumber").as(String.class), String.format("%%%s%%", kw));
            Predicate p2 = b.like(root.get("firstName").as(String.class), String.format("%%%s%%", kw));
            q = q.where(b.or(p1,p2));
        }
        
        Query query = session.createQuery(q);
        return query.getResultList();
    }
    
}
