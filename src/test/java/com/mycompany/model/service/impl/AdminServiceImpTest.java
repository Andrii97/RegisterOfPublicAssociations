/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.Admin;
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
public class AdminServiceImpTest {
    @Autowired
    private AdminServiceImp instance;
    
    public AdminServiceImpTest() {
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
     * Test of addAdmin method, of class AdminServiceImp.
     */
    @Test
    public void testAddAdmin() {
        System.out.println("addAdmin");
        Admin admin = new Admin("Руслан", "");
        Admin expResult = admin;
        Admin result = instance.addAdmin(admin);
        assertEquals(expResult, result);
        instance.deleteAdmin(admin);
    }

    /**
     * Test of getByName method, of class AdminServiceImp.
     */
    @Test
    public void testGetByName() {
        System.out.println("getByName");
        String name = "Андрій";
        Admin result = instance.getByName(name);
        assertNotNull(result);
    }
    
}
