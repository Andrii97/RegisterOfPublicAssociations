/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.*;
import com.mycompany.model.repository.FormOfIncorporationRepository;
import com.mycompany.model.repository.KindRepository;
import com.mycompany.model.repository.PublicAssociationRepository;
import java.util.ArrayList;
import java.util.Date;
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
public class SearchTest {
    
    @Autowired
    private PublicAssociationRepository publicAssociationRepository;
    @Autowired
    private FormOfIncorporationRepository formOfIncorporationRepository;
    @Autowired
    private KindRepository kindRepository;
    
    public SearchTest() {
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
     * Test of addPerson method, of class PersonServiceImp.
     */
    @Test
    public void testSearchPublicAssociation() {
        FormOfIncorporation f = formOfIncorporationRepository.findByName("Громадська організація");
                //"Громадська організація");
        Date dateOfRegistrationAfter = new Date(2016-1900, 5-1 , 19); // 2016-05-29
        System.out.println("________________________");
        System.out.println(dateOfRegistrationAfter);
        System.out.println("________________________");
        Date dateOfRegistrationBefore = new Date(2016-1900, 4, 31);
        System.out.println("________________________");
        System.out.println(dateOfRegistrationBefore);
        System.out.println("________________________");
        List<PublicAssociation> publicAssociations = publicAssociationRepository.findByFullNameLikeAndFormOfIncorporationAndDateOfRegistrationAfterAndDateOfRegistrationBefore("%організація%", f, dateOfRegistrationAfter, dateOfRegistrationBefore);
//publicAssociationRepository.findByFullNameLikeAndFormOfIncorporationAndDateOfRegistrationBefore("%організація%", f, dateOfRegistrationBefore);
//publicAssociationRepository.findByFullNameLikeAndFormOfIncorporationAndDateOfRegistration("%організація%", f, dateOfRegistration);
                //
                //publicAssociationRepository.findByFullNameLikeAndFormOfIncorporation("%організація%", f);
                //publicAssociationRepository.findByFullName("ГО Нова організація");
        for(PublicAssociation p : publicAssociations)
        {
            System.out.println("________________________");
            System.out.print(p.getFullName());
            System.out.print(p.getId());
            System.out.print(p.getFormOfIncorporation().getName());
            System.out.print(p.getFormOfIncorporation().getId());
            System.out.println("");
        }
        Kind kind = kindRepository.findByName("Освітня або культурно-виховна");
        List<PublicAssociation> publicAssociations_res = new ArrayList<>();
        for(PublicAssociation p : publicAssociations)
        {
            if(p.getKinds().contains(kind))
                publicAssociations_res.add(p);
        }
        for(PublicAssociation p : publicAssociations_res)
        {
            System.out.println("_____&&______&&_____&&________");
            System.out.print(p.getFullName());
            System.out.print(p.getId());
            System.out.print(p.getFormOfIncorporation().getName());
            System.out.print(p.getFormOfIncorporation().getId());
            System.out.println("");
        }
    }
    
}

