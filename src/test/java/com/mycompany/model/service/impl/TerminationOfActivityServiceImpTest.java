/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.TerminationOfActivity;
import java.util.Date;
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
 * @author BOSS
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/spring.xml"})
public class TerminationOfActivityServiceImpTest {
    @Autowired
    private TerminationOfActivityServiceImp instance;
    @Autowired
    private PublicAssociationServiceImp publicAssociationServiceImp;
    
    public TerminationOfActivityServiceImpTest() {
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
     * Test of addTerminationOfActivity method, of class TerminationOfActivityServiceImp.
     */
    @Test
    public void testAddTerminationOfActivity() {
        System.out.println("addTerminationOfActivity");
        Date currentDate = new Date();
        TerminationOfActivity terminationOfActivity = new TerminationOfActivity(
                publicAssociationServiceImp.getByFullName("Організація1"), "Рішення суду");//, currentDate);
        TerminationOfActivity expResult = terminationOfActivity;
        TerminationOfActivity result = instance.addTerminationOfActivity(terminationOfActivity);
        assertEquals(expResult, result);
    }

    /**
     * Test of getByPublicAssociationId method, of class TerminationOfActivityServiceImp.
     */
    @Test
    public void testGetByPublicAssociationId() {
        System.out.println("getByPublicAssociationId");
        Integer id = null;
        TerminationOfActivity expResult = null;
        TerminationOfActivity result = instance.getByPublicAssociationId(id);
        assertEquals(expResult, result);
    }
    
}
