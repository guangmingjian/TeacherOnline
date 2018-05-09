package com.imu.service;

import com.imu.entity.Category;

public interface CategoryService {
    public boolean addCategory(Category category);
    //判断输入的分类名是否存在
    public boolean isExist(String name,String uid);
}
