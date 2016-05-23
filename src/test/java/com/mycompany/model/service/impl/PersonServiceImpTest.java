/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.*;
import com.mycompany.model.service.PersonService;
import com.mycompany.model.entity.Person;
import com.mycompany.model.repository.NationalityRepository;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 *
 * @author redin
 */


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/spring.xml"})
public class PersonServiceImpTest {
    
    @Autowired
    private PersonServiceImp instance;
    @Autowired
    private NationalityRepository nationalityRepository;
    
    public PersonServiceImpTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of addPerson method, of class PersonServiceImp.
     */
    @Test
    public void testAddPerson() {
        System.out.println("addPerson");
        Nationality nationality = nationalityRepository.findByName("українське");
        Person person = new Person(nationality, "Іванченко Іван Володимирович");
        Person expResult = person;
        Person result = instance.addPerson(person);
        assertEquals(expResult, result);
        instance.deletePerson(person);
    }

    /**
     * Test of getByName method, of class PersonServiceImp.
     */
    @Test
    public void testGetByName() {
        System.out.println("getByName");
        String name = "";
        Person expResult = null;
        Person result = instance.getByName(name);
        assertEquals(expResult, result);
    }
    
}
