package com.imu.dao;

import com.imu.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    public User getUserById(String uId);
    //注意多个参数时需要注解进行参数对应
    public User getUserByEmPa(@Param("uEmail") String uEmail, @Param("uPassword") String uPassword);
    public User getUserByEmail(String uEmail);
    public int addUser(User user);
    public boolean updateUser(@Param("id")String id,@Param("user") User user);
    public boolean updateValue(@Param("id")String uId,@Param("value")int value);
    public List<User> queryAll();
    public int delete(String uId);
}
