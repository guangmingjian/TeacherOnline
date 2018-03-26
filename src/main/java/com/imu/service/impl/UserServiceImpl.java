package com.imu.service.impl;


import com.imu.dao.UserDao;
import com.imu.entity.User;
import com.imu.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService{
    @Resource
    UserDao userDao;
    public User getUserById(String id) {
        return userDao.getUserById(id);
    }

    public User doLogin(String email, String password) {
        return userDao.getUserByEmPa(email,password);
    }

    public User isEmail(String email) {

        return userDao.getUserByEmail(email);
    }

}
