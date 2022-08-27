package com.trieuvi.pojos;

import com.trieuvi.pojos.Receipt;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-27T15:52:25")
@StaticMetamodel(Regulation.class)
public class Regulation_ { 

    public static volatile SetAttribute<Regulation, Receipt> receiptSet;
    public static volatile SingularAttribute<Regulation, Integer> customerQuantity;
    public static volatile SingularAttribute<Regulation, Float> examinationPrice;
    public static volatile SingularAttribute<Regulation, Integer> id;

}