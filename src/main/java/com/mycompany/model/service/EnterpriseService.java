/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service;

import com.mycompany.model.entity.*;
import java.util.List;

/**
 *
 * @author redin
 */
public interface EnterpriseService {
    Enterprise addEnterprise(Enterprise enterprise);
    Enterprise getByName(String name);
}
