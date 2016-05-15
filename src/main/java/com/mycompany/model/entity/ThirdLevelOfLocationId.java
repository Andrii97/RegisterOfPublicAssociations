package com.mycompany.model.entity;
// Generated 06.05.2016 18:28:25 by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * ThirdLevelOfLocationId generated by hbm2java
 */
@Embeddable
public class ThirdLevelOfLocationId  implements java.io.Serializable {


     private int code;
     private int secondLevelOfLocationCode;
     private int firstLevelOfLocationCode;

    public ThirdLevelOfLocationId() {
    }

    public ThirdLevelOfLocationId(int code, int secondLevelOfLocationCode, int firstLevelOfLocationCode) {
       this.code = code;
       this.secondLevelOfLocationCode = secondLevelOfLocationCode;
       this.firstLevelOfLocationCode = firstLevelOfLocationCode;
    }
   


    @Column(name="code", nullable=false)
    public int getCode() {
        return this.code;
    }
    
    public void setCode(int code) {
        this.code = code;
    }


    @Column(name="second_level_of_location_code", nullable=false)
    public int getSecondLevelOfLocationCode() {
        return this.secondLevelOfLocationCode;
    }
    
    public void setSecondLevelOfLocationCode(int secondLevelOfLocationCode) {
        this.secondLevelOfLocationCode = secondLevelOfLocationCode;
    }


    @Column(name="first_level_of_location_code", nullable=false)
    public int getFirstLevelOfLocationCode() {
        return this.firstLevelOfLocationCode;
    }
    
    public void setFirstLevelOfLocationCode(int firstLevelOfLocationCode) {
        this.firstLevelOfLocationCode = firstLevelOfLocationCode;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof ThirdLevelOfLocationId) ) return false;
		 ThirdLevelOfLocationId castOther = ( ThirdLevelOfLocationId ) other; 
         
		 return (this.getCode()==castOther.getCode())
 && (this.getSecondLevelOfLocationCode()==castOther.getSecondLevelOfLocationCode())
 && (this.getFirstLevelOfLocationCode()==castOther.getFirstLevelOfLocationCode());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getCode();
         result = 37 * result + this.getSecondLevelOfLocationCode();
         result = 37 * result + this.getFirstLevelOfLocationCode();
         return result;
   }   


}


