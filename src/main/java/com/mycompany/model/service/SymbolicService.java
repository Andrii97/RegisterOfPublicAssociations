/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service;
import com.mycompany.model.entity.*;
/**
 *
 * @author BOSS
 */
public interface SymbolicService {
    Symbolic addSymbolic(Symbolic symbolic);
    Symbolic getByPublicAssociationId(Integer id);
}
