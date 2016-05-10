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
 * @author Andrii
 */
@Repository
public interface FormOfIncorporationRepository extends JpaRepository<FormOfIncorporation, Long>{
    FormOfIncorporation findByName(String name);
}
