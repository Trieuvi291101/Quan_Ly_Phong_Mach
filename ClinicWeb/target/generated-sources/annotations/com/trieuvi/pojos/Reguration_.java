package com.trieuvi.pojos;

import com.trieuvi.pojos.Receipt;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-21T13:40:52")
@StaticMetamodel(Reguration.class)
public class Reguration_ { 

    public static volatile SetAttribute<Reguration, Receipt> receiptSet;
    public static volatile SingularAttribute<Reguration, Integer> customerQuantity;
    public static volatile SingularAttribute<Reguration, Float> examinationPrice;
    public static volatile SingularAttribute<Reguration, Integer> id;

}