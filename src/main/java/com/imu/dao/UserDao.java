package com.imu.dao;

import com.imu.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    public User getUserById(String uId);
    //注意多个参数时需要注解进行参数对应
    public User getUserByEmPa(@Param("uEmail") String uEmail, @Param("uPassword") String uPassword);
}