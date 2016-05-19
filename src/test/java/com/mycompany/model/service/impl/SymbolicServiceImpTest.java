/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.Symbolic;
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
public class SymbolicServiceImpTest {
    @Autowired
    private SymbolicServiceImp instance;
    public SymbolicServiceImpTest() {
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
     * Test of addSymbolic method, of class SymbolicServiceImp.
     */
    @Test
    public void testAddSymbolic() {
        System.out.println("addSymbolic");
        Symbolic symbolic = null;
        //SymbolicServiceImp instance = new SymbolicServiceImp();
        Symbolic expResult = null;
        Symbolic result = instance.addSymbolic(symbolic);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getByPublicAssociationId method, of class SymbolicServiceImp.
     */
    @Test
    public void testGetByPublicAssociationId() {
        System.out.println("getByPublicAssociationId");
        Integer id = null;
        //SymbolicServiceImp instance = new SymbolicServiceImp();
        Symbolic expResult = null;
        Symbolic result = instance.getByPublicAssociationId(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
