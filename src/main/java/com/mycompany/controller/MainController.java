/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.util.ArrayList;
import com.mycompany.model.entity.Kind;
import com.mycompany.model.entity.Nationality;
import com.mycompany.model.entity.Person;
import com.mycompany.model.entity.PublicAssociation;
import com.mycompany.model.repository.KindRepository;
import com.mycompany.model.repository.NationalityRepository;
import com.mycompany.model.service.impl.FormOfIncorporationServiceImp;
import com.mycompany.model.service.impl.PersonServiceImp;
import com.mycompany.model.service.impl.PublicAssociationServiceImp;
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
    public KindRepository kindRepository;
    @Autowired
    public NationalityRepository nationalityRepository;
    @Autowired
    public FormOfIncorporationServiceImp formOfIncorporationServiceImp;
    @Autowired
    public PublicAssociationServiceImp instance;
    
    
    @RequestMapping(value = {"", "mainpage"}, method = RequestMethod.GET)
    public String mainpage(ModelAndView mav) {
        return "mainpage";
    }
    
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String loginpage(ModelAndView mav){
        return "loginpage";
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
    
    @RequestMapping(value = "createpage", method = RequestMethod.GET)
    public String createpage(ModelAndView mav, ModelMap map){
        ArrayList<Kind> kinds;
        kinds = new ArrayList<>();
        kinds.add(kindRepository.findByName("Правозахисна"));
        kinds.add(new Kind("__________2_____________"));
        System.out.println("I am here");
        map.put("kinds", kinds);
        map.put("name", "Andrii");
        return "createpage";
    }
    
    @RequestMapping(value = "/addrecord", method = RequestMethod.POST)
    public String addrecord(@RequestParam(value = "fullname")String fullname,
                                 @RequestParam(value = "shortname")String shortname,
                                 @RequestParam(value = "foreignname")String foreignname,
                                 @RequestParam(value = "formOfIncorporation")String formOfIncorporation,
                                 @RequestParam(value = "kind")String kind,
                                 @RequestParam(value = "objective")String objective,
                                 @RequestParam(value = "statuse")String statuse,
                                 @RequestParam(value = "address")String address,
                                 @RequestParam(value = "firstlevel")String firstlevel,
                                 @RequestParam(value = "secondlevel")String secondlevel,
                                 @RequestParam(value = "thirdlevel")String thirdlevel,
                                 @RequestParam(value = "fourthlevel")String fourthlevel,
                                 ModelMap map){
        if(fullname == "yer"){
        PublicAssociation publicAssociation = new PublicAssociation(formOfIncorporationServiceImp.getByName(formOfIncorporation), 
                fullname, "Незареєстровано", 5, 5, 5, 5);
        PublicAssociation expResult = publicAssociation;
        PublicAssociation result = instance.addPublicAssociation(publicAssociation);
        }
        return "createpage";
    }
    
    @RequestMapping(value = "editpage", method = RequestMethod.GET)
    public String editpage(ModelAndView mav){
        return "editpage";
    }
}
