/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.repository;

import com.mycompany.model.entity.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author redin
 */
@Repository
public interface PersonRepository extends JpaRepository<Person, Integer>{
    Person findByName(String name);
    Person findOneByName(String name);
}
