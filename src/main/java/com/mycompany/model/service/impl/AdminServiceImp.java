/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.model.service.impl;


import com.mycompany.model.entity.*;
import com.mycompany.model.repository.AdminRepository;
import com.mycompany.model.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 *
 * @author BOSS
 */
@Service
public class AdminServiceImp implements AdminService{
    @Autowired
    private AdminRepository adminRepository;
    
    @Override
    public Admin addAdmin(Admin admin){
        Admin savedAdmin = adminRepository.saveAndFlush(admin);
        return savedAdmin;
    }
    
    @Override
    public Admin getByName(String name){
        return adminRepository.findByName(name);
    }
}
