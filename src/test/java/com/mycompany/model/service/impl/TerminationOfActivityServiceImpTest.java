/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.TerminationOfActivity;
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
        TerminationOfActivity terminationOfActivity = null;
        //TerminationOfActivityServiceImp instance = new TerminationOfActivityServiceImp();
        TerminationOfActivity expResult = null;
        TerminationOfActivity result = instance.addTerminationOfActivity(terminationOfActivity);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getByPublicAssociationId method, of class TerminationOfActivityServiceImp.
     */
    @Test
    public void testGetByPublicAssociationId() {
        System.out.println("getByPublicAssociationId");
        Integer id = null;
        //TerminationOfActivityServiceImp instance = new TerminationOfActivityServiceImp();
        TerminationOfActivity expResult = null;
        TerminationOfActivity result = instance.getByPublicAssociationId(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
