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
 * Nationality generated by hbm2java
 */
@Entity
@Table(name="nationality"
    ,catalog="register_of_public_association"
)
public class Nationality  implements java.io.Serializable {


     private Integer id;
     private String name;
     private Set<Person> persons = new HashSet(0);

    public Nationality() {
    }

	
    public Nationality(String name) {
        this.name = name;
    }
    public Nationality(String name, Set<Person> persons) {
       this.name = name;
       this.persons = persons;
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

@OneToMany(fetch=FetchType.LAZY, mappedBy="nationality")
    public Set<Person> getPersons() {
        return this.persons;
    }
    
    public void setPersons(Set<Person> persons) {
        this.persons = persons;
    }




}


