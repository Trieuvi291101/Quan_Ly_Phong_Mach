package com.trieuvi.pojos;

import com.trieuvi.pojos.MedicalBill;
import com.trieuvi.pojos.Medicine;
import com.trieuvi.pojos.Regulation;
import com.trieuvi.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-28T20:20:39")
@StaticMetamodel(MedicalBillDetail.class)
public class MedicalBillDetail_ { 

    public static volatile SingularAttribute<MedicalBillDetail, Integer> quantity;
    public static volatile SingularAttribute<MedicalBillDetail, Date> createdDate;
    public static volatile SingularAttribute<MedicalBillDetail, String> totalPrice;
    public static volatile SingularAttribute<MedicalBillDetail, Medicine> medicineId;
    public static volatile SingularAttribute<MedicalBillDetail, Regulation> regulationId;
    public static volatile SingularAttribute<MedicalBillDetail, User> customerId;
    public static volatile SingularAttribute<MedicalBillDetail, MedicalBill> medicalBillId;
    public static volatile SingularAttribute<MedicalBillDetail, Integer> id;
    public static volatile SingularAttribute<MedicalBillDetail, String> howToUse;

}