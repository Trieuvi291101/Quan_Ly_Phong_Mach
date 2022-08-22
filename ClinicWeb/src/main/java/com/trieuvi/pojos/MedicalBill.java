/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.pojos;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Star
 */
@Entity
@Table(name = "medical_bill")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "MedicalBill.findAll", query = "SELECT m FROM MedicalBill m"),
    @NamedQuery(name = "MedicalBill.findById", query = "SELECT m FROM MedicalBill m WHERE m.id = :id"),
    @NamedQuery(name = "MedicalBill.findBySymptom", query = "SELECT m FROM MedicalBill m WHERE m.symptom = :symptom"),
    @NamedQuery(name = "MedicalBill.findByDiagnosticDisease", query = "SELECT m FROM MedicalBill m WHERE m.diagnosticDisease = :diagnosticDisease")})
public class MedicalBill implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 100)
    @Column(name = "symptom")
    private String symptom;
    @Size(max = 100)
    @Column(name = "diagnostic_disease")
    private String diagnosticDisease;
    @JoinColumn(name = "customer_sche", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private CustomerSche customerSche;
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User userId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "medicalBillId")
    private Set<Receipt> receiptSet;

    public MedicalBill() {
    }

    public MedicalBill(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }

    public String getDiagnosticDisease() {
        return diagnosticDisease;
    }

    public void setDiagnosticDisease(String diagnosticDisease) {
        this.diagnosticDisease = diagnosticDisease;
    }

    public CustomerSche getCustomerSche() {
        return customerSche;
    }

    public void setCustomerSche(CustomerSche customerSche) {
        this.customerSche = customerSche;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    @XmlTransient
    public Set<Receipt> getReceiptSet() {
        return receiptSet;
    }

    public void setReceiptSet(Set<Receipt> receiptSet) {
        this.receiptSet = receiptSet;
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
        if (!(object instanceof MedicalBill)) {
            return false;
        }
        MedicalBill other = (MedicalBill) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.trieuvi.pojos.MedicalBill[ id=" + id + " ]";
    }
    
}
