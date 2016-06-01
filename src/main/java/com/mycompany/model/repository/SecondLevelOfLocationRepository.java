/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.repository;

import com.mycompany.model.entity.*;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Andrii
 */
@Repository
public interface SecondLevelOfLocationRepository extends JpaRepository<SecondLevelOfLocation, Integer>{
    SecondLevelOfLocation findByName(String name);
    List<SecondLevelOfLocation> findByFirstLevelOfLocation(FirstLevelOfLocation firstLevelOfLocation);
}