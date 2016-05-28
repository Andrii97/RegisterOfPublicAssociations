/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.controller;

import java.util.List;
import com.mycompany.model.entity.FormOfIncorporation;
import com.mycompany.model.repository.PublicAssociationRepository;
import java.io.FileWriter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.util.ArrayList;
import com.mycompany.model.entity.Kind;
import com.mycompany.model.entity.PublicAssociation;
import com.mycompany.model.entity.Statuse;
import com.mycompany.model.repository.FormOfIncorporationRepository;
import com.mycompany.model.repository.KindRepository;
import com.mycompany.model.repository.StatuseRepository;
import com.mycompany.model.service.impl.PublicAssociationServiceImp;
import java.io.IOException;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;
/**
 *
 * @author Andrii
 */
@Controller
@RequestMapping("/")
public class MainController{
    @Autowired
    KindRepository kindRepository;
    @Autowired
    FormOfIncorporationRepository formOfIncorporationRepository;
    @Autowired
    PublicAssociationRepository publicAssociationRepository;
    @Autowired
    StatuseRepository statuseRepository;
    @Autowired
    public PublicAssociationServiceImp publicAssociationServiceImp;

    
    @RequestMapping(value = {"", "mainpage"}, method = RequestMethod.GET)
    public String mainpage(ModelAndView mav, ModelMap map){
        map.put("kinds", kindRepository.findAll());
        map.put("name", "Andrii");
        map.put("formOfIncorporations", formOfIncorporationRepository.findAll());
        map.put("publicAssociations", publicAssociationRepository.findAll());
        map.put("statuses", statuseRepository.findAll());
        // TO DO:
        map.put("firstLevelOfLocations", null);//firstLevelOfLocationRepository.findAll());
        map.put("secondLevelOfLocations", null);
        map.put("thirdLevelOfLocations", null);
        
        return "mainpage";
    }
    
    @RequestMapping(value = "createpage", method = RequestMethod.POST)
    public String addrecord(@RequestParam(value = "fullname")String fullname,
                                 @RequestParam(value = "shortname")String shortname,
                                 @RequestParam(value = "foreignname")String foreignname,
                                 @RequestParam(value = "FormOfIncorporation")String formOfIncorporation,
                                 @RequestParam(value = "kind")String kind,
                                 @RequestParam(value = "objective")String objective,
                                 @RequestParam(value = "statuse")String statuse,
                                 @RequestParam(value = "state")String state,
                                 @RequestParam(value = "address")String address,
                                 @RequestParam(value = "firstlevel")Integer firstlevel,
                                 @RequestParam(value = "secondlevel")Integer secondlevel,
                                 @RequestParam(value = "thirdlevel")Integer thirdlevel,
                                 @RequestParam(value = "fourthlevel")Integer fourthlevel,
                                 ModelMap map){
        map.put("kinds", kindRepository.findAll());
        map.put("statuses", statuseRepository.findAll());
        map.put("name", "Andrii");
        map.put("formOfIncorporations", formOfIncorporationRepository.findAll());
        
        if (!fullname.equals("") && !formOfIncorporation.equals("Не встановлено") && !state.equals("Не встановлено"))
        {
            PublicAssociation publicAssociation = new PublicAssociation(formOfIncorporationRepository.findByName(formOfIncorporation), 
                fullname, state, firstlevel, secondlevel, thirdlevel, fourthlevel);
            publicAssociation.setShortName(shortname);
            publicAssociation.setForeignLanguageName(foreignname);
            publicAssociation.setObjective(objective);
            publicAssociation.setAddress(address);
            
            if(!kind.equals("Не встановлено")){
            Set<Kind> kinds = new HashSet<>();
            kinds.add(kindRepository.findByName(kind));
            publicAssociation.setKinds(kinds);
            }
            
            if(!statuse.equals("Не встановлено")){
            Set<Statuse> statuses = new HashSet<>();
            statuses.add(statuseRepository.findByName(statuse));
            publicAssociation.setStatuses(statuses);
            }
            publicAssociationServiceImp.addPublicAssociation(publicAssociation);

        }
        else{            
            map.put("createResult", "Незаповнені обов'язкові поля");
        }
        try(FileWriter writer = new FileWriter("D://test1.txt", false)){
            writer.append(thirdlevel.toString());
            writer.flush();
        }
        catch(IOException e){

        }
        return "createpage";
    }
    /*
    @RequestMapping(value = "mainpage", params = "again", method = RequestMethod.GET)
    public String showmainpage(ModelAndView mav){
        return "mainpage";
    }*/
    
    @RequestMapping(value = "mainpage", method = RequestMethod.POST)
    public String searchPublicAssociations(@RequestParam(value = "FullName")String fullname,
                                 @RequestParam(value = "Status")String status,
                                 @RequestParam(value = "FormOfIncorporation")String formOfIncorporation,
                                 ModelMap map){
        map.put("kinds", kindRepository.findAll());
        map.put("name", "Andrii");
        map.put("formOfIncorporations", formOfIncorporationRepository.findAll());
        map.put("statuses", statuseRepository.findAll());
        map.put("publicAssociations", publicAssociationRepository.findByFullName(fullname));
        map.put("firstLevelOfLocations", null);//firstLevelOfLocationRepository.findAll());
        map.put("secondLevelOfLocations", null);
        map.put("thirdLevelOfLocations", null);
        
        return "mainpage";
    }
    
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String loginpage(ModelAndView mav){
        return "loginpage";
    }
    
    @RequestMapping(value = "createpage", method = RequestMethod.GET)
    public String createpage(ModelAndView mav, ModelMap map){
        map.put("kinds", kindRepository.findAll());
        map.put("statuses", statuseRepository.findAll());
        map.put("name", "Andrii");
        map.put("formOfIncorporations", formOfIncorporationRepository.findAll());
        return "createpage";
    }

    @RequestMapping(value = "login", params = "again")
    public String relogin(ModelMap map){
        map.put("errorMessage", "Помилка авторизації");
        return "loginpage";
    }

    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(ModelAndView mav){
        return "mainpage";
    }
    
    @RequestMapping(value = "admin", method = RequestMethod.GET)
    public String admin(ModelAndView mav){
        return "adminpage";
    }    
    
}
