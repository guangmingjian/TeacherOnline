package com.imu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class UserController {

    @RequestMapping(value = "/UserExist",method = RequestMethod.POST)
    @ResponseBody
    public String  UserExist(String email, HttpServletRequest request, HttpServletResponse response){
        //获取前端htmlco对象的值

        System.out.println("email:"+ email);
        //设置相应的字符集
        return "{}";
    }
}
