package com.trieuvi.pojos;

import com.trieuvi.pojos.MedicalBillDetail;
import com.trieuvi.pojos.Producer;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-03T21:14:47")
@StaticMetamodel(Medicine.class)
public class Medicine_ { 

    public static volatile SetAttribute<Medicine, MedicalBillDetail> medicalBillDetailSet;
    public static volatile SingularAttribute<Medicine, Integer> quantity;
    public static volatile SingularAttribute<Medicine, Float> price;
    public static volatile SingularAttribute<Medicine, Date> outOfDate;
    public static volatile SingularAttribute<Medicine, String> name;
    public static volatile SingularAttribute<Medicine, Integer> id;
    public static volatile SingularAttribute<Medicine, Producer> producerId;

}