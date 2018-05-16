package com.imu.service.impl;

import com.imu.dao.AdminDao;
import com.imu.entity.Admin;
import com.imu.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminDao adminDao;
    public Admin dolog(String email, String password) {
        return adminDao.queryAdmin(email,password);
    }
}
