package com.imu.controller;

import com.imu.entity.Category;
import com.imu.entity.User;
import com.imu.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class CategoryController {
    @Autowired
    CategoryService categoryService;
    @RequestMapping(value = "/add-category", method = RequestMethod.POST)
    public String addCategory(HttpSession session, String cateName) {
        Category category=new Category();
        category.setCataName(cateName);
        User user = (User)session.getAttribute("sess_user");
        category.setuId(user.getuId());
        //如果该名称已经存在，则提示输入新的名称
        if(categoryService.isExist(cateName,user.getuId()))
            return "feedback/exist";
        if(categoryService.addCategory(category))
            return "feedback/success_update";
        else
            return  "feedback/failed_update";

    }
}
