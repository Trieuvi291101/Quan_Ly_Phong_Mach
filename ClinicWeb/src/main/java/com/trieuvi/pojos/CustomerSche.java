/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.pojos;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Star
 */
@Entity
@Table(name = "customer_sche")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CustomerSche.findAll", query = "SELECT c FROM CustomerSche c"),
    @NamedQuery(name = "CustomerSche.findById", query = "SELECT c FROM CustomerSche c WHERE c.id = :id"),
    @NamedQuery(name = "CustomerSche.findBySchedule", query = "SELECT c FROM CustomerSche c WHERE c.schedule = :schedule"),
    @NamedQuery(name = "CustomerSche.findByFomredSche", query = "SELECT c FROM CustomerSche c WHERE c.fomredSche = :fomredSche"),
    @NamedQuery(name = "CustomerSche.findByExamined", query = "SELECT c FROM CustomerSche c WHERE c.examined = :examined"),
    @NamedQuery(name = "CustomerSche.findByTimeExamined", query = "SELECT c FROM CustomerSche c WHERE c.timeExamined = :timeExamined")})
public class CustomerSche implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "schedule")
    @Temporal(TemporalType.DATE)
    private Date schedule;
    @Column(name = "fomred_sche")
    private Boolean fomredSche;
    @Column(name = "examined")
    private Boolean examined;
    @Column(name = "time_examined")
    @Temporal(TemporalType.TIME)
    private Date timeExamined;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "customerSche")
    private Set<MedicalBill> medicalBillSet;
    @JoinColumn(name = "customer_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User customerId;

    public CustomerSche() {
    }

    public CustomerSche(Integer id) {
        this.id = id;
    }

    public CustomerSche(Integer id, Date schedule) {
        this.id = id;
        this.schedule = schedule;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getSchedule() {
        return schedule;
    }

    public void setSchedule(Date schedule) {
        this.schedule = schedule;
    }

    public Boolean getFomredSche() {
        return fomredSche;
    }

    public void setFomredSche(Boolean fomredSche) {
        this.fomredSche = fomredSche;
    }

    public Boolean getExamined() {
        return examined;
    }

    public void setExamined(Boolean examined) {
        this.examined = examined;
    }

    public Date getTimeExamined() {
        return timeExamined;
    }

    public void setTimeExamined(Date timeExamined) {
        this.timeExamined = timeExamined;
    }

    @XmlTransient
    public Set<MedicalBill> getMedicalBillSet() {
        return medicalBillSet;
    }

    public void setMedicalBillSet(Set<MedicalBill> medicalBillSet) {
        this.medicalBillSet = medicalBillSet;
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
        if (!(object instanceof CustomerSche)) {
            return false;
        }
        CustomerSche other = (CustomerSche) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.trieuvi.pojos.CustomerSche[ id=" + id + " ]";
    }
    
}