/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.*;
import com.mycompany.model.repository.EnterpriseRepository;
import com.mycompany.model.service.EnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 *
 * @author redin
 */

@Service
public class EnterpriseServiceImp implements EnterpriseService {
    @Autowired
    private EnterpriseRepository enterpriseRepository;
    
    @Override
    public Enterprise addEnterprise(Enterprise enterprise){
        Enterprise savedEnterprise = enterpriseRepository.saveAndFlush(enterprise);
        return savedEnterprise;
    }
    
    @Override
    public Enterprise getByName(String name){
        return enterpriseRepository.findByName(name);
    }
}
