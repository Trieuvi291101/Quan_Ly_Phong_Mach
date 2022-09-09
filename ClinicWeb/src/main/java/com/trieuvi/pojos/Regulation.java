/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.pojos;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Star
 */
@Entity
@Table(name = "regulation")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Regulation.findAll", query = "SELECT r FROM Regulation r"),
    @NamedQuery(name = "Regulation.findById", query = "SELECT r FROM Regulation r WHERE r.id = :id"),
    @NamedQuery(name = "Regulation.findByExaminationPrice", query = "SELECT r FROM Regulation r WHERE r.examinationPrice = :examinationPrice"),
    @NamedQuery(name = "Regulation.findByCustomerQuantity", query = "SELECT r FROM Regulation r WHERE r.customerQuantity = :customerQuantity")})
public class Regulation implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "examination_price")
    private Float examinationPrice;
    @Column(name = "customer_quantity")
    private Integer customerQuantity;
    @OneToMany(mappedBy = "regulationId")
    private Set<MedicalBillDetail> medicalBillDetailSet;

    public Regulation() {
    }

    public Regulation(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Float getExaminationPrice() {
        return examinationPrice;
    }

    public void setExaminationPrice(Float examinationPrice) {
        this.examinationPrice = examinationPrice;
    }

    public Integer getCustomerQuantity() {
        return customerQuantity;
    }

    public void setCustomerQuantity(Integer customerQuantity) {
        this.customerQuantity = customerQuantity;
    }

    @XmlTransient
    public Set<MedicalBillDetail> getMedicalBillDetailSet() {
        return medicalBillDetailSet;
    }

    public void setMedicalBillDetailSet(Set<MedicalBillDetail> medicalBillDetailSet) {
        this.medicalBillDetailSet = medicalBillDetailSet;
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
        if (!(object instanceof Regulation)) {
            return false;
        }
        Regulation other = (Regulation) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.trieuvi.pojos.Regulation[ id=" + id + " ]";
    }
    
}
