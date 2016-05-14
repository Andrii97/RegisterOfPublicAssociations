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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * Statuse generated by hbm2java
 */
@Entity
@Table(name="statuse"
    ,catalog="register_of_public_association"
)
public class Statuse  implements java.io.Serializable {


     private Integer id;
     private String name;
     private Set<PublicAssociation> publicAssociations = new HashSet(0);

    public Statuse() {
    }

    public Statuse(String name, Set<PublicAssociation> publicAssociations) {
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

    
    @Column(name="name", length=45)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

@ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(name="public_association_has_statuse", catalog="register_of_public_association", joinColumns = { 
        @JoinColumn(name="statuse_id", nullable=false, updatable=false) }, inverseJoinColumns = { 
        @JoinColumn(name="public_association_id", nullable=false, updatable=false) })
    public Set<PublicAssociation> getPublicAssociations() {
        return this.publicAssociations;
    }
    
    public void setPublicAssociations(Set<PublicAssociation> publicAssociations) {
        this.publicAssociations = publicAssociations;
    }




}

