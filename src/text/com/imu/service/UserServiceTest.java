package com.imu.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-service.xml",
        "classpath:spring/spring-dao.xml"})
public class UserServiceTest {
    @Autowired
    UserService userService;
    @Test
    public void getUserById() {
        if(userService.getUserById("2")==null)
        {
            System.out.println("null");
        }
    }
}