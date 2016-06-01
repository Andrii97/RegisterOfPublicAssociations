/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.repository;
import com.mycompany.model.entity.*;
import java.util.Date;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Andrii
 */
@Repository
public interface PublicAssociationRepository extends JpaRepository<PublicAssociation, Integer>{
    List<PublicAssociation> findByFullName(String name);
    List<PublicAssociation> findByFullNameLikeAndFormOfIncorporation(String name, FormOfIncorporation formOfIncorporation);
    List<PublicAssociation> findByFullNameLikeAndFormOfIncorporationAndDateOfRegistrationAfterAndDateOfRegistrationBefore(String name, 
            FormOfIncorporation formOfIncorporation, Date dateOfRegistrationAfter, Date dateOfRegistrationBefore);
    List<PublicAssociation> findByFullNameLikeAndFormOfIncorporationAndDateOfRegistrationBefore(String name, 
            FormOfIncorporation formOfIncorporation, Date dateOfRegistration);
    List<PublicAssociation> findByFullNameLikeAndDateOfRegistrationAfterAndDateOfRegistrationBefore
        (String name, Date dateOfRegistrationAfter, Date dateOfRegistrationBefore);
    PublicAssociation findOneByFullName(String name);
    List<PublicAssociation> findByFullNameLike(String name);
}
