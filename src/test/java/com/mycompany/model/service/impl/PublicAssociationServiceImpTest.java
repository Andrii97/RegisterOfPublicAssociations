/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.Kind;
import com.mycompany.model.entity.PublicAssociation;
import com.mycompany.model.repository.KindRepository;
import java.util.List;
import java.util.Set;
import java.util.HashSet;
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

/**
 *
 * @author redin
 */
public class PublicAssociationServiceImpTest {
    @Autowired
    private PublicAssociationServiceImp instance;
    @Autowired
    private KindRepository kindRepository;
    @Autowired
    private FormOfIncorporationServiceImp formOfIncorporationServiceImp;
    
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
        List<PublicAssociation> result = instance.getAll();
        assertNotNull(result);
    }

    /**
     * Test of addPublicAssociation method, of class PublicAssociationServiceImp.
     */
    @Test
    public void testAddPublicAssociation() {
        System.out.println("addPublicAssociation");
        PublicAssociation publicAssociation = new PublicAssociation(formOfIncorporationServiceImp.getByName("Громадська спілка"), 
                "Нова громадська організація", "Незареєстровано", 0, 0, 0, 0);
        PublicAssociation expResult = publicAssociation;
        PublicAssociation result = instance.addPublicAssociation(publicAssociation);
        assertEquals(expResult, result);
        instance.deletePublicAssociation(result);
    }

    /**
     * Test of addPublicAssociationKind method, of class PublicAssociationServiceImp.
     */
    @Test
    public void testAddPublicAssociationKind() {
        System.out.println("addPublicAssociationKind");
        Kind kind = kindRepository.findByName("Правозахисна");
        PublicAssociation publicAssociation = instance.getByFullName("Організація");
        Set<Kind> kinds = new HashSet<Kind>();
        kinds.add(kind);
        publicAssociation.setKinds(kinds);
        PublicAssociation expResult = publicAssociation;
        PublicAssociation result = instance.addPublicAssociation(publicAssociation);
        assertNotNull(result);
    }

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
    }

    /**
     * Test of getByKind method, of class PublicAssociationServiceImp.
     */
    @Test
    public void testGetByKind() {
        System.out.println("getByKind");
        String name = "Правозахисна";
        Set<PublicAssociation> result = instance.getByKind(name);
        assertNotNull(result);
    }
    
}
