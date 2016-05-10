/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.*;
import com.mycompany.model.service.FormOfIncorporationService;
import com.mycompany.model.service.PublicAssociationService;
import java.util.List;
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
public class PublicAssociationServiceImpTest {
    
    @Autowired
    PublicAssociationService instance;
    
    @Autowired
    private FormOfIncorporationService formOfIncorporationService;
    
    public PublicAssociationServiceImpTest() {
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
     * Test of getAll method, of class PublicAssociationServiceImp.
     */
    @Test
    public void testGetAll() {
        System.out.println("getAll");
        
        //List<PublicAssociation> expResult = null;
        List<PublicAssociation> result = instance.getAll();
        assertNotNull(result);
        // TODO review the generated test code and remove the default call to fail.
        // fail("The test case is a prototype.");
    }

    /**
     * Test of addPublicAssociation method, of class PublicAssociationServiceImp.
     */
    /*
    @Test
    public void testAddPublicAssociation() {
        System.out.println("addPublicAssociation");
        FormOfIncorporation f = formOfIncorporationService.getByName("Громадська організація");
        PublicAssociation publicAssociation = new PublicAssociation(f, null, "Зареєстровано", 0, 0, 0, 0);
        PublicAssociation expResult = publicAssociation;
        PublicAssociation result = instance.addPublicAssociation(publicAssociation);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        // fail("The test case is a prototype.");
    }
    */
    /**
     * Test of getByFullName method, of class PublicAssociationServiceImp.
     */
    @Test
    public void testGetByFullName() {
        System.out.println("getByFullName");
        String name = "";
        PublicAssociation expResult = null;
        PublicAssociation result = instance.getByFullName(name);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        // fail("The test case is a prototype.");
    }
    
}
