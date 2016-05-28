/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mycompany.model.entity.Admin;
import com.mycompany.model.service.AdminService;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Andrii
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    private String USER_NAME = "username";
    @Autowired
    AdminService adminService;

    @RequestMapping(value = "private")
    public String open(ModelMap map){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String name = authentication.getName();
        Admin admin = adminService.getByName(name);
        map.put(USER_NAME, name);
        /*switch (entity.getRoles().get(0)){
            case DEVELOPER:
                return "devprivatepage";
            case COORDINATION_WORKER:
                return "coordprivatepage";
            case JUCTICE_WORKER:
                return "justiceprivatepage";
        }*/
        return null;
    }
    
    @RequestMapping(value = "/createpage", method = RequestMethod.POST)
    public String createMethodic(@RequestParam(value = "fullname")String fullName,
                                 @RequestParam(value = "shortname")String shortName,
                                 @RequestParam(value = "foreignname")String foreignName,
                                 @RequestParam(value = "FormOfIncorporation")String formOfIncorporation,
                                 @RequestParam(value = "Kind")String kind,
                                 @RequestParam(value = "objective")String objective,
                                 @RequestParam(value = "statuse")String statuse,
                                 @RequestParam(value = "address")String address,
                                 @RequestParam(value = "firstlevel")String firstlevel,
                                 @RequestParam(value = "secondlevel")String secondlevel,
                                 @RequestParam(value = "thirdlevel")String thirdlevel,
                                 @RequestParam(value = "fourthlevel")String fourthlevel,
                                 ModelMap map){
        /*String str;
        if(nameMethodic.length() < 3){
            str = "Мінімальний розмір назви методики - 3 символи";
        }
        else {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            String name = authentication.getName();
            str = developerService.createMethod(nameMethodic, type,
                    text, name);
        }
        map.put("createResult", str);*/
        
        return "createpage";
    }
}
