/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.*;
import com.mycompany.model.repository.PersonRepository;
import com.mycompany.model.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 *
 * @author redin
 */
@Service
public class PersonServiceImp implements PersonService{
    @Autowired
    private PersonRepository personRepository;
    
    @Override
    public Person addPerson(Person person){
        Person savedPerson = personRepository.saveAndFlush(person);
        return savedPerson;
    }
    
    @Override
    public Person getByName(String name){
        return personRepository.findByName(name);
    }
}
