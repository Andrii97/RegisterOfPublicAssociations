/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.springtest;
import com.mycompany.model.service.impl.*;
import com.mycompany.model.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import java.io.IOException;
/**
 *
 * @author Andrii
 */
@Controller
public class Start {
    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
    
    public static void main(String[] args) throws IOException {
        // TODO code application logic here
        System.out.println("Hello");
        ApplicationContext applicationContext = new FileSystemXmlApplicationContext("classpath:spring.xml");
        PublicAssociationServiceImp bs = (PublicAssociationServiceImp) applicationContext.getBean(PublicAssociationServiceImp.class);
        //BankServiceImp bS = new PublicAssociationServiceImp();
        FormOfIncorporationServiceImp fs = (FormOfIncorporationServiceImp)applicationContext.getBean(FormOfIncorporationServiceImp.class);
        
        FormOfIncorporation f = fs.getByName("Громадська організація");
        PublicAssociation p_a = new PublicAssociation(f, "Нова організація", "Зареєстровано", 0, 0, 0, 0);
        
        PublicAssociationServiceImp publicAssociationServiceImp = (PublicAssociationServiceImp) applicationContext.getBean(PublicAssociationServiceImp.class);
        if (publicAssociationServiceImp.getByKind("Правозахисна") == null)
            System.out.println("NULL");
        else
            System.out.println("OK");
        System.in.read();
    }
}
