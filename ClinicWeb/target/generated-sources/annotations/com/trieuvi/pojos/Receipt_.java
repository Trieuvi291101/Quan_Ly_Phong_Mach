package com.trieuvi.pojos;

import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.pojos.Reguration;
import com.trieuvi.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-26T20:46:00")
@StaticMetamodel(Receipt.class)
public class Receipt_ { 

    public static volatile SingularAttribute<Receipt, Date> createdDate;
    public static volatile SingularAttribute<Receipt, Float> totalPrice;
    public static volatile SingularAttribute<Receipt, Reguration> regulationId;
    public static volatile SingularAttribute<Receipt, User> customerId;
    public static volatile SingularAttribute<Receipt, MedicalBill> medicalBillId;
    public static volatile SingularAttribute<Receipt, Integer> id;
    public static volatile SingularAttribute<Receipt, User> userId;

}