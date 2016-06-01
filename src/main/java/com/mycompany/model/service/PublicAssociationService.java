/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service;

import com.mycompany.model.entity.*;
import java.util.List;
import java.util.Set;

/**
 *
 * @author Andrii
 */
public interface PublicAssociationService {
    PublicAssociation addPublicAssociation(PublicAssociation publicAssociation);
    PublicAssociation getByFullName(String name);
    List<PublicAssociation> getAll();
    Set<PublicAssociation> getByKind(String name);
    void deletePublicAssociation(PublicAssociation publicAssociation);
}
