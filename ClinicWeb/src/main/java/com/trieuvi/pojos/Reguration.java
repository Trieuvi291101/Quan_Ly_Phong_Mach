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
@Table(name = "reguration")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Reguration.findAll", query = "SELECT r FROM Reguration r"),
    @NamedQuery(name = "Reguration.findById", query = "SELECT r FROM Reguration r WHERE r.id = :id"),
    @NamedQuery(name = "Reguration.findByExaminationPrice", query = "SELECT r FROM Reguration r WHERE r.examinationPrice = :examinationPrice"),
    @NamedQuery(name = "Reguration.findByCustomerQuantity", query = "SELECT r FROM Reguration r WHERE r.customerQuantity = :customerQuantity")})
public class Reguration implements Serializable {

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
    private Set<Receipt> receiptSet;

    public Reguration() {
    }

    public Reguration(Integer id) {
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
        if (!(object instanceof Reguration)) {
            return false;
        }
        Reguration other = (Reguration) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.trieuvi.pojos.Reguration[ id=" + id + " ]";
    }
    
}
