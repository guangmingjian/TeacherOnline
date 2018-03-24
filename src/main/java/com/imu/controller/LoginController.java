package com.imu.controller;

import com.imu.entity.User;
import com.imu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {
    @Autowired
    UserService userService;
    /**
     * 实现登录验证
     *
     */
    @RequestMapping(value = "/dolog",method = RequestMethod.POST)
    public String doLogin(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap){
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = userService.doLogin(email,password);
        if(user == null)
            return "login";
        else
            return "first_index";
    }

}
