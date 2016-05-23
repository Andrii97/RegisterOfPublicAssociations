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
}
