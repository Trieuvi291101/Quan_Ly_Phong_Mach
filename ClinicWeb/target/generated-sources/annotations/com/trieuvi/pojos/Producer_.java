package com.trieuvi.pojos;

import com.trieuvi.pojos.Medicine;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-27T15:52:25")
@StaticMetamodel(Producer.class)
public class Producer_ { 

    public static volatile SingularAttribute<Producer, String> name;
    public static volatile SingularAttribute<Producer, Integer> id;
    public static volatile SetAttribute<Producer, Medicine> medicineSet;

}