/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.FormOfIncorporation;
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
 * @author Andrii
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/spring.xml"})
public class FormOfIncorporationServiceImpTest {
    
    @Autowired
    private FormOfIncorporationServiceImp instance;
    
    public FormOfIncorporationServiceImpTest() {
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
     * Test of getByName method, of class FormOfIncorporationServiceImp.
     */
    @Test
    public void testGetByName() {
        System.out.println("getByName");
        String name = "Громадська спілка";
        FormOfIncorporation result = instance.getByName(name);
        assertNotNull(result);
    }
    
}
