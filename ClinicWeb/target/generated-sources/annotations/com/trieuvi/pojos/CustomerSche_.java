package com.trieuvi.pojos;

import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-02T00:31:08")
@StaticMetamodel(CustomerSche.class)
public class CustomerSche_ { 

    public static volatile SingularAttribute<CustomerSche, Date> schedule;
    public static volatile SingularAttribute<CustomerSche, Date> timeExamined;
    public static volatile SetAttribute<CustomerSche, MedicalBill> medicalBillSet;
    public static volatile SingularAttribute<CustomerSche, User> customerId;
    public static volatile SingularAttribute<CustomerSche, Boolean> examined;
    public static volatile SingularAttribute<CustomerSche, Integer> id;
    public static volatile SingularAttribute<CustomerSche, Boolean> formedSche;

}