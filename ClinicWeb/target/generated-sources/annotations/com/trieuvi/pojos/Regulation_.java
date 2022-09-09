package com.trieuvi.pojos;

import com.trieuvi.pojos.MedicalBillDetail;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-05T14:37:26")
@StaticMetamodel(Regulation.class)
public class Regulation_ { 

    public static volatile SetAttribute<Regulation, MedicalBillDetail> medicalBillDetailSet;
    public static volatile SingularAttribute<Regulation, Integer> customerQuantity;
    public static volatile SingularAttribute<Regulation, Float> examinationPrice;
    public static volatile SingularAttribute<Regulation, Integer> id;

}