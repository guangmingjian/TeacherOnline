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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class LoginController {
    @Autowired
    UserService userService;
    /**
     * 实现登录验证
     *
     */
    @RequestMapping(value = "/dolog",method = RequestMethod.POST)
    public String doLogin(HttpSession session, HttpServletRequest request, HttpServletResponse response, ModelMap modelMap){
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = userService.doLogin(email,password);
        System.out.println("**********登录 userid：" + user.getuId());
        response.setCharacterEncoding("utf-8");

        if(user == null)
        {
            System.out.println("***************session*********** null");
            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('email or password is error...'); window.location='/login' </script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "login";
        }
        else {
            session.setAttribute("sess_user", user);
            System.out.println("***************session********  " + user.getuName());
            return "redirect:/index";
        }
    }

}
