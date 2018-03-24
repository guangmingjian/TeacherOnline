package com.imu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class UserController {

    @RequestMapping(value = "/UserExist",method = RequestMethod.POST)
    public void UserExist(HttpServletRequest request, HttpServletResponse response){
        //获取前端htmlco对象的值
        String email = request.getParameter("email");
        System.out.println("email:"+ email);
        //设置相应的字符集
        response.setCharacterEncoding("utf-8");
        try {
//          如果上传成功则返回给ajax的对话框‘上传成功’的字样
            response.getWriter().write(email);
            System.out.println("*************返回ajax************");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
