/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository.impl;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.pojos.MedicalBillDetail;
import com.trieuvi.pojos.Medicine;
import com.trieuvi.pojos.User;
import com.trieuvi.repository.StatsRepository;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
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
public class StatsRepositoryImpl implements StatsRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Object[]> totalPriceMonthStats(String kw, Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        Root rP = q.from(MedicalBillDetail.class);
        Root rM = q.from(Medicine.class);

        List<Predicate> predicates = new ArrayList<>();
        predicates.add(b.equal(rP.get("medicineId"), rM.get("id")));

        q.multiselect(b.function("MONTH", Integer.class, rP.get("createdDate")),
                b.function("YEAR", Integer.class, rP.get("createdDate")),
                b.sum(b.prod(rP.get("quantity"), rP.get("price"))));

        if (fromDate != null) {
            predicates.add(b.greaterThan(rP.get("createdDate"), fromDate));
        }
        if (toDate != null) {
            predicates.add(b.greaterThan(rP.get("createdDate"), toDate));
        }

        q.groupBy(b.function("MONTH", Integer.class, rP.get("createdDate")),
                b.function("YEAR", Integer.class, rP.get("createdDate")));

        Query query = session.createQuery(q);
        return query.getResultList();

    }

    @Override
    public List<Object[]> examinationStats(String kw, Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        Root rP = q.from(CustomerSche.class);
        Root rM = q.from(User.class);

        List<Predicate> predicates = new ArrayList<>();
        predicates.add(b.equal(rP.get("customerId"), rM.get("id")));
        predicates.add(b.equal(rP.get("examined"), true));

        q.multiselect(b.function("MONTH", Integer.class, rP.get("schedule")),
                b.function("YEAR", Integer.class, rP.get("schedule")),
                b.countDistinct(rP.get("id")));

        if (fromDate != null) {
            predicates.add(b.greaterThan(rP.get("schedule"), fromDate));
        }
        if (toDate != null) {
            predicates.add(b.greaterThan(rP.get("schedule"), toDate));
        }

        q.groupBy(b.function("MONTH", Integer.class, rP.get("schedule")),
                b.function("YEAR", Integer.class, rP.get("schedule")));

        Query query = session.createQuery(q);
        return query.getResultList();
    }

}
