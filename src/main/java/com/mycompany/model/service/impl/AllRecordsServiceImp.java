/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;
import com.mycompany.model.entity.*;
import com.mycompany.model.repository.AllRecordsRepository;
import com.mycompany.model.service.AllRecordsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author BOSS
 */
@Service
public class AllRecordsServiceImp implements AllRecordsService{
    @Autowired
    private AllRecordsRepository allRecordsRepository;
    
    @Override
    public AllRecords addAllRecords(AllRecords allrecords){
        AllRecords savedRecord = allRecordsRepository.saveAndFlush(allrecords);
        return savedRecord;
    }
    
    @Override
    public AllRecords getById(Integer id){
        return allRecordsRepository.findById(id);
    }
}
