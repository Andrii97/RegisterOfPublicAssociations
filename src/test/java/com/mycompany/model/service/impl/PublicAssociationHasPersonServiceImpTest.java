/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;

import com.mycompany.model.entity.Nationality;
import com.mycompany.model.entity.PublicAssociationHasPerson;
import com.mycompany.model.entity.PublicAssociation;
import com.mycompany.model.entity.Person;
import com.mycompany.model.entity.Post;
import com.mycompany.model.entity.PublicAssociation;
import com.mycompany.model.entity.PublicAssociationHasPersonId;
import com.mycompany.model.repository.NationalityRepository;
import com.mycompany.model.repository.PublicAssociationRepository;
import com.mycompany.model.repository.PostRepository;
import com.mycompany.model.repository.PersonRepository;
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
public class PublicAssociationHasPersonServiceImpTest {
    @Autowired
    private PublicAssociationHasPersonServiceImp instance;
    @Autowired
    private PersonRepository personRepository;
    @Autowired
    private PublicAssociationRepository publicAssociationRepository;
    @Autowired
    private PostRepository postRepository;
    
    @Autowired
    private PersonServiceImp personServiceImp;
    @Autowired
    private NationalityRepository nationalityRepository;
    @Autowired
    private FormOfIncorporationServiceImp formOfIncorporationServiceImp;
    @Autowired
    private PublicAssociationServiceImp publicAssociationServiceImp;
    
    public PublicAssociationHasPersonServiceImpTest() {
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
     * Test of addPublicAssociationHasPerson method, of class PublicAssociationHasPersonServiceImp.
     */
    @Test
    public void testAddPublicAssociationHasPerson() {
        System.out.println("addPublicAssociationHasPerson");
        Person person = personRepository.findByName("Сергієнко Ярослав Степанович");
        Post post = postRepository.findByName("Голова Ради");
        PublicAssociation publicAssociation = publicAssociationRepository.findOneByFullName("Організація");
        PublicAssociationHasPersonId publicAssociationPersonId = new PublicAssociationHasPersonId(publicAssociation.getId(), person.getId());
        PublicAssociationHasPerson publicAssociationPerson = new PublicAssociationHasPerson(publicAssociationPersonId, person, post, publicAssociation);
        PublicAssociationHasPerson expResult = publicAssociationPerson;
        PublicAssociationHasPerson result = instance.addPublicAssociationHasPerson(publicAssociationPerson);
        assertNotNull(result);
        instance.deletePublicAssociationHasPerson(publicAssociationPerson);
    }
    
    @Test
    public void testAddPublicAssociationHasPersonNew() {
        System.out.println("addPublicAssociationHasPersonNew");
        System.out.println("addPerson");
        Nationality nationality = nationalityRepository.findByName("українське");
        Person person = new Person(nationality, "Іванченко Іван Володимирович");
        Person expResult = person;
        Person result = personServiceImp.addPerson(person);
        assertEquals(result, expResult);
        System.out.println("addPost");
        Post post = new Post("Секретар");
        postRepository.saveAndFlush(post);
        
        System.out.println("addPublicAssociation");
        PublicAssociation publicAssociation = new PublicAssociation(formOfIncorporationServiceImp.getByName("Громадська спілка"), 
                "Нова громадська організація", "Незареєстровано", 0, 0, 0, 0);
        PublicAssociation expResult1 = publicAssociation;
        PublicAssociation result1 = publicAssociationServiceImp.addPublicAssociation(publicAssociation);
        assertEquals(expResult1, result1);
        
        PublicAssociationHasPerson publicAssociationPerson = new PublicAssociationHasPerson(publicAssociation,
                person, post);
        PublicAssociationHasPerson result2 = instance.addPublicAssociationHasPerson(publicAssociationPerson);
        assertNotNull(result2);
        instance.deletePublicAssociationHasPerson(publicAssociationPerson);
        
    }

    /**
     * Test of getByPersonId method, of class PublicAssociationHasPersonServiceImp.
     */
    @Test
    public void testGetByPersonId() {
        System.out.println("getByPersonId");
        Integer personId = null;
        PublicAssociationHasPerson expResult = null;
        PublicAssociationHasPerson result = instance.getByPersonId(personId);
        assertEquals(expResult, result);
    }

    /**
     * Test of getByPostId method, of class PublicAssociationHasPersonServiceImp.
     */
    @Test
    public void testGetByPostId() {
        System.out.println("getByPostId");
        Integer postId = null;
        PublicAssociationHasPerson expResult = null;
        PublicAssociationHasPerson result = instance.getByPostId(postId);
        assertEquals(expResult, result);
    }
    
}
