/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.Enterprise;
import com.mycompany.model.entity.PublicAssociation;;
import com.mycompany.model.repository.PublicAssociationRepository;
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
public class EnterpriseServiceImpTest {
    @Autowired
    private EnterpriseServiceImp instance;
    @Autowired
    private PublicAssociationRepository publicAssociationRepository;
    
    public EnterpriseServiceImpTest() {
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
     * Test of addEnterprise method, of class EnterpriseServiceImp.
     */
    @Test
    public void testAddEnterprise() {
        System.out.println("addEnterprise");
        PublicAssociation publicAssociation = publicAssociationRepository.findByFullName("Організація");
        Enterprise enterprise = new Enterprise(3245143, publicAssociation, "Нове Підприємство");
        //int usreouCode, PublicAssociation publicAssociation, String name
      //  EnterpriseServiceImp instance = new EnterpriseServiceImp();
        Enterprise expResult = enterprise;
        Enterprise result = instance.addEnterprise(enterprise);
        assertNotNull(result);
        // TODO review the generated test code and remove the default call to fail.
     //   fail("The test case is a prototype.");
    }

    /**
     * Test of getByName method, of class EnterpriseServiceImp.
     */
    @Test
    public void testGetByName() {
        System.out.println("getByName");
        String name = "";
      //  EnterpriseServiceImp instance = new EnterpriseServiceImp();
        Enterprise expResult = null;
        Enterprise result = instance.getByName(name);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
      //  fail("The test case is a prototype.");
    }
    
}
