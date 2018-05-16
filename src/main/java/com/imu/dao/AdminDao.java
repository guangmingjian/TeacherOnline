package com.imu.dao;

import com.imu.entity.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminDao {
    public Admin queryAdmin(@Param("email") String email, @Param("password") String password);
}
