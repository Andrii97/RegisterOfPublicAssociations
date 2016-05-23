/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.*;
import com.mycompany.model.repository.FormOfIncorporationRepository;
import com.mycompany.model.service.FormOfIncorporationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Andrii
 */

@Service
public class FormOfIncorporationServiceImp implements FormOfIncorporationService {
    @Autowired
    private FormOfIncorporationRepository formOfIncorporationRepository;
    
    @Override
    public FormOfIncorporation getByName(String name)
    {
        return formOfIncorporationRepository.findByName(name);
    }
}
