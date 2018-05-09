package com.imu.service.impl;

import com.imu.dao.CategoryDao;
import com.imu.entity.Category;
import com.imu.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService{
    @Autowired
    CategoryDao categoryDao;
    public boolean addCategory(Category category) {
       if(categoryDao.add(category)>0)
           return true;
        return false;
    }
    public boolean isExist(String name, String uid) {
        Category category = categoryDao.getCateByNameID(uid,name);
        if (category == null)
        return false;
        else return true;
    }
}
