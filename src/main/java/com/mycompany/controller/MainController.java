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

/**
 *
 * @author Andrii
 */
@Controller
@RequestMapping("/")
public class MainController{
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
    
}
