/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;
import com.mycompany.model.entity.*;
import com.mycompany.model.repository.SymbolicRepository;
import com.mycompany.model.service.SymbolicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 *
 * @author BOSS
 */
@Service
public class SymbolicServiceImp implements SymbolicService {
    @Autowired
    private SymbolicRepository symbolicRepository;
    
    @Override
    public Symbolic addSymbolic(Symbolic symbolic){
        Symbolic savedSymbolic = symbolicRepository.saveAndFlush(symbolic);
        return savedSymbolic;
    }
    
    @Override
    public Symbolic getByPublicAssociationId(Integer id){
        return symbolicRepository.findByPublicAssociationId(id);
    }    
    
    @Override
    public void deleteSymbolic(Symbolic symbolic){
        symbolicRepository.delete(symbolic);
    }
}
