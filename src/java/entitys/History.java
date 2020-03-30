/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitys;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 *
 * @author LARISSA
 */
@Entity
public class History implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToOne
    private Account account;
    @OneToOne
    private Company company;
    @Temporal(TemporalType.TIMESTAMP)
    private Date takeOn;
    @Temporal(TemporalType.TIMESTAMP)
    private Date paymentDate;

    public History() {
    }

    public History(Account account, Company company, Date takeOn, Date paymentDate) {
        this.account = account;
        this.company = company;
        this.takeOn = takeOn;
        this.paymentDate = paymentDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public Date getTakeOn() {
        return takeOn;
    }

    public void setTakeOn(Date takeOn) {
        this.takeOn = takeOn;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 67 * hash + Objects.hashCode(this.id);
        hash = 67 * hash + Objects.hashCode(this.account);
        hash = 67 * hash + Objects.hashCode(this.company);
        hash = 67 * hash + Objects.hashCode(this.takeOn);
        hash = 67 * hash + Objects.hashCode(this.paymentDate);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final History other = (History) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        if (!Objects.equals(this.account, other.account)) {
            return false;
        }
        if (!Objects.equals(this.company, other.company)) {
            return false;
        }
        if (!Objects.equals(this.takeOn, other.takeOn)) {
            return false;
        }
        if (!Objects.equals(this.paymentDate, other.paymentDate)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "History{" + "id=" + id + ", account=" + account + ", company=" + company + ", takeOn=" + takeOn + ", paymentDate=" + paymentDate + '}';
    }
    

}