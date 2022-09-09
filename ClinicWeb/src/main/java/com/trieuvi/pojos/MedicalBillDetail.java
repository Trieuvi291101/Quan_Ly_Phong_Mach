/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.pojos;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Star
 */
@Entity
@Table(name = "medical_bill_detail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "MedicalBillDetail.findAll", query = "SELECT m FROM MedicalBillDetail m"),
    @NamedQuery(name = "MedicalBillDetail.findById", query = "SELECT m FROM MedicalBillDetail m WHERE m.id = :id"),
    @NamedQuery(name = "MedicalBillDetail.findByQuantity", query = "SELECT m FROM MedicalBillDetail m WHERE m.quantity = :quantity"),
    @NamedQuery(name = "MedicalBillDetail.findByHowToUse", query = "SELECT m FROM MedicalBillDetail m WHERE m.howToUse = :howToUse"),
    @NamedQuery(name = "MedicalBillDetail.findByPrice", query = "SELECT m FROM MedicalBillDetail m WHERE m.price = :price"),
    @NamedQuery(name = "MedicalBillDetail.findByCreatedDate", query = "SELECT m FROM MedicalBillDetail m WHERE m.createdDate = :createdDate")})
public class MedicalBillDetail implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Column(name = "quantity")
    private Integer quantity;
    @Size(max = 45)
    @Column(name = "how_to_use")
    private String howToUse;
    @Size(max = 45)
    @Column(name = "price")
    private String price;
    @Column(name = "created_date")
    private String createdDate;
    @JoinColumn(name = "medical_bill_id", referencedColumnName = "id")
    @ManyToOne
    private MedicalBill medicalBillId;
    @JoinColumn(name = "medicine_id", referencedColumnName = "id")
    @ManyToOne
    private Medicine medicineId;
    @JoinColumn(name = "regulation_id", referencedColumnName = "id")
    @ManyToOne
    private Regulation regulationId;
    @JoinColumn(name = "customer_id", referencedColumnName = "id")
    @ManyToOne
    private User customerId;

    public MedicalBillDetail() {
    }

    public MedicalBillDetail(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getHowToUse() {
        return howToUse;
    }

    public void setHowToUse(String howToUse) {
        this.howToUse = howToUse;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public MedicalBill getMedicalBillId() {
        return medicalBillId;
    }

    public void setMedicalBillId(MedicalBill medicalBillId) {
        this.medicalBillId = medicalBillId;
    }

    public Medicine getMedicineId() {
        return medicineId;
    }

    public void setMedicineId(Medicine medicineId) {
        this.medicineId = medicineId;
    }

    public Regulation getRegulationId() {
        return regulationId;
    }

    public void setRegulationId(Regulation regulationId) {
        this.regulationId = regulationId;
    }

    public User getCustomerId() {
        return customerId;
    }

    public void setCustomerId(User customerId) {
        this.customerId = customerId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MedicalBillDetail)) {
            return false;
        }
        MedicalBillDetail other = (MedicalBillDetail) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.trieuvi.pojos.MedicalBillDetail[ id=" + id + " ]";
    }

    public void setRegulationId(int i) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
