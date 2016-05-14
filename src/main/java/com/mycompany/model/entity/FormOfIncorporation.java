package com.mycompany.model.entity;
// Generated 06.05.2016 18:28:25 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * FormOfIncorporation generated by hbm2java
 */
@Entity
@Table(name="form_of_incorporation"
    ,catalog="register_of_public_association"
)
public class FormOfIncorporation  implements java.io.Serializable {


     private Integer id;
     private String name;
     private Set<PublicAssociation> publicAssociations = new HashSet(0);

    public FormOfIncorporation() {
    }

	
    public FormOfIncorporation(String name) {
        this.name = name;
    }
    public FormOfIncorporation(String name, Set<PublicAssociation> publicAssociations) {
       this.name = name;
       this.publicAssociations = publicAssociations;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    
    @Column(name="name", nullable=false, length=45)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="formOfIncorporation")
    public Set<PublicAssociation> getPublicAssociations() {
        return this.publicAssociations;
    }
    
    public void setPublicAssociations(Set<PublicAssociation> publicAssociations) {
        this.publicAssociations = publicAssociations;
    }




}

