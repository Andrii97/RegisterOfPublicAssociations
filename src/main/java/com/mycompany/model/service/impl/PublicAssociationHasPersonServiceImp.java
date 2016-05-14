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
import java.util.Set;
import com.mycompany.model.repository.PublicAssociationHasPersonRepository;
import com.mycompany.model.service.PublicAssociationHasPersonService;

/**
 *
 * @author redin
 */
@Service
public class PublicAssociationHasPersonServiceImp implements PublicAssociationHasPersonService {
    @Autowired
    private PublicAssociationHasPersonRepository publicAssociationHasPersonRepository;
    
    @Override
    public PublicAssociationHasPerson addPublicAssociationHasPerson(PublicAssociationHasPerson person){
    PublicAssociationHasPerson savedPerson = publicAssociationHasPersonRepository.saveAndFlush(person);
    return savedPerson;
    }
    
    @Override
    public PublicAssociationHasPerson getByPersonId(Integer personId){
        return publicAssociationHasPersonRepository.findByPersonId(personId);
    }
    
    @Override
    public PublicAssociationHasPerson getByPostId(Integer postId){
        return publicAssociationHasPersonRepository.findByPostId(postId);
    }
}
