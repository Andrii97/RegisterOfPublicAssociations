/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;
import com.mycompany.model.entity.*;
import com.mycompany.model.repository.TerminationOfActivityRepository;
import com.mycompany.model.service.TerminationOfActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 *
 * @author BOSS
 */
@Service
public class TerminationOfActivityServiceImp implements TerminationOfActivityService{
    @Autowired
    private TerminationOfActivityRepository terminationOfActivityRepository;
    
    @Override
    public TerminationOfActivity addTerminationOfActivity(TerminationOfActivity terminationOfActivity){
        TerminationOfActivity savedTerminationOfActivity = terminationOfActivityRepository.saveAndFlush(terminationOfActivity);
        return savedTerminationOfActivity;
    }
    
    @Override
    public TerminationOfActivity getByPublicAssociationId(Integer id){
        return terminationOfActivityRepository.findByPublicAssociationId(id);
    }    
    
    @Override
    public void deleteTerminationOfActivity(TerminationOfActivity terminationOfActivity){
        terminationOfActivityRepository.delete(terminationOfActivity);
    }
}
