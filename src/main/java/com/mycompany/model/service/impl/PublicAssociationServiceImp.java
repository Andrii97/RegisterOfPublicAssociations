/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import com.mycompany.model.repository.PublicAssociationRepository;
import com.mycompany.model.service.PublicAssociationService;

/**
 *
 * @author Andrii
 */

@Service
public class PublicAssociationServiceImp implements PublicAssociationService {
    @Autowired
    private PublicAssociationRepository publicAssociationRepository;
    
    @Override
    public List<PublicAssociation> getAll(){
        return publicAssociationRepository.findAll();
    }
    
    @Override
    public PublicAssociation addPublicAssociation(PublicAssociation publicAssociation){
        PublicAssociation savedPublicAssociation = publicAssociationRepository.saveAndFlush(publicAssociation);
        return savedPublicAssociation;
    }
    
    
    
    @Override
    public PublicAssociation getByFullName(String name){
        return publicAssociationRepository.findByFullName(name);
    }
    
    
}
