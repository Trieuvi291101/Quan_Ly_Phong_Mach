package com.trieuvi.pojos;

import com.trieuvi.pojos.CustomerSche;
import com.trieuvi.pojos.Receipt;
import com.trieuvi.pojos.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-27T15:52:25")
@StaticMetamodel(MedicalBill.class)
public class MedicalBill_ { 

    public static volatile SetAttribute<MedicalBill, Receipt> receiptSet;
    public static volatile SingularAttribute<MedicalBill, String> symptom;
    public static volatile SingularAttribute<MedicalBill, CustomerSche> customerSche;
    public static volatile SingularAttribute<MedicalBill, String> diagnosticDisease;
    public static volatile SingularAttribute<MedicalBill, Integer> id;
    public static volatile SingularAttribute<MedicalBill, User> userId;

}