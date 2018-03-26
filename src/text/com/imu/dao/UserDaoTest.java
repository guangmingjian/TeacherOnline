package com.imu.dao;

import com.imu.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-service.xml",
        "classpath:spring/spring-dao.xml"})
public class UserDaoTest {
    @Autowired
    UserDao userDao;
    @Test
    public void getUserById() {
        User user = userDao.getUserById("1");
        System.out.println(user.toString());
    }

    @Test
    public void getUserByEmPa() {
      System.out.println(  userDao.getUserByEmPa("1106697389@qq.com","123456").toString());
    }

    @Test
    public void addUser() {
        User user = new User("110669@qq.com","123456",
                "张三","15690993629","18");
       System.out.println( userDao.addUser(user));
    }
}