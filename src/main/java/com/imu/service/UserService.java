package com.imu.service;

import com.imu.entity.User;

import java.util.List;

public interface UserService {
    public User getUserById(String id);
    /**
     * 登录功能实现
     * @param email 用户邮箱
     * @param password 用户密码
     * @return 返回查询的user实体
     * 如果无此用户则该对象为空*/
    public User doLogin(String email,String password);
    public User isEmail(String email);
    public boolean doReg(User user);
    public boolean updateUser(String id, User user);
    public List<User> allUser();
    public boolean delete(String id);
}
