/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.Admin;
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
import java.util.Date;

/**
 *
 * @author BOSS
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/spring.xml"})
public class AllRecordsServiceImpTest {
    @Autowired
    private AllRecordsServiceImp instance;
    @Autowired
    private AdminServiceImp adminServiceImp;
    
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
        Admin admin = adminServiceImp.getByName("Андрій");
        Date currentDate = new Date();
        AllRecords allRecords = new AllRecords(admin, currentDate);
        allRecords.setDetails("Додано нову оранызацію");
        AllRecords expResult = allRecords;
        AllRecords result = instance.addAllRecords(allRecords);
        assertEquals(expResult, result);
        instance.deleteAllRecords(allRecords);
    }

    /**
     * Test of getById method, of class AllRecordsServiceImp.
     */
    @Test
    public void testGetById() {
        System.out.println("getById");
        Integer id = 1;
        AllRecords result = instance.getById(id);
        assertNotNull(result);
    }
    
}
