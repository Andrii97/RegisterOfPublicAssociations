package com.mycompany.model.entity;
// Generated 06.05.2016 18:28:25 by Hibernate Tools 4.3.1


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * TerminationOfActivity generated by hbm2java
 */
@Entity
@Table(name="termination_of_activity"
    ,catalog="register_of_public_association"
)
public class TerminationOfActivity  implements java.io.Serializable {


     private int publicAssociationId;
     private PublicAssociation publicAssociation;
     private String cause;
     private Date date;

    public TerminationOfActivity() {
    }

	
    public TerminationOfActivity(PublicAssociation publicAssociation, String cause) {
        this.publicAssociation = publicAssociation;
        this.cause = cause;
    }
    public TerminationOfActivity(PublicAssociation publicAssociation, String cause, Date date) {
       this.publicAssociation = publicAssociation;
       this.cause = cause;
       this.date = date;
    }
   
     @GenericGenerator(name="generator", strategy="foreign", parameters=@Parameter(name="property", value="publicAssociation"))@Id @GeneratedValue(generator="generator")

    
    @Column(name="public_association_id", unique=true, nullable=false)
    public int getPublicAssociationId() {
        return this.publicAssociationId;
    }
    
    public void setPublicAssociationId(int publicAssociationId) {
        this.publicAssociationId = publicAssociationId;
    }

@OneToOne(fetch=FetchType.LAZY)@PrimaryKeyJoinColumn
    public PublicAssociation getPublicAssociation() {
        return this.publicAssociation;
    }
    
    public void setPublicAssociation(PublicAssociation publicAssociation) {
        this.publicAssociation = publicAssociation;
    }

    
    @Column(name="cause", nullable=false, length=65535)
    public String getCause() {
        return this.cause;
    }
    
    public void setCause(String cause) {
        this.cause = cause;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="date", length=19)
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }




}


