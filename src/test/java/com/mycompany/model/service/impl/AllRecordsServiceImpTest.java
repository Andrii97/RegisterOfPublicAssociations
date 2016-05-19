/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.AllRecords;
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
public class AllRecordsServiceImpTest {
    @Autowired
    private AllRecordsServiceImp instance;
    public AllRecordsServiceImpTest() {
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
     * Test of addAllRecords method, of class AllRecordsServiceImp.
     */
    @Test
    public void testAddAllRecords() {
        System.out.println("addAllRecords");
        AllRecords allrecords = null;
        //AllRecordsServiceImp instance = new AllRecordsServiceImp();
        AllRecords expResult = null;
        AllRecords result = instance.addAllRecords(allrecords);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getById method, of class AllRecordsServiceImp.
     */
    @Test
    public void testGetById() {
        System.out.println("getById");
        Integer id = null;
        //AllRecordsServiceImp instance = new AllRecordsServiceImp();
        AllRecords expResult = null;
        AllRecords result = instance.getById(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
