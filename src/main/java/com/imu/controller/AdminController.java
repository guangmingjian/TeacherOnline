package com.imu.controller;

import com.imu.entity.User;
import com.imu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class AdminController {
    @Autowired
    UserService userService;
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.addAttribute("users",userService.allUser());
        return "admin/admin-index";
    }
    @RequestMapping(value = "/deleteUsers", method = RequestMethod.GET)
    public String deleteUser(ModelMap modelMap, String uId, HttpServletResponse response) {
        System.out.println("-------------deleteUser---------------------");
        if(userService.delete(uId))
        {
            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('delete successful...'); window.location='/admin' </script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "admin/admin-index";
        }
        else {

            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('delete failed...');  window.location='/admin'</script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "admin/admin-index";
        }

    }
    @RequestMapping(value = "/adUpdateUser", method = RequestMethod.GET)
    public String updateUser(ModelMap modelMap,String uId) {

        modelMap.addAttribute("user",userService.getUserById(uId));
        System.out.println(userService.getUserById(uId).toString());
        return "admin/update_user";
    }
    @RequestMapping(value = "/doUpdateUser",method = RequestMethod.POST)
    public String  updateUser(HttpSession session, HttpServletResponse response, User user){
        System.out.println(user.toString());
        boolean success =  userService.updateUser(user.getuId(),user);
        try {
            PrintWriter out = response.getWriter();
            if(success){
                out.print("update successful!...");
            }else{
                out.print("update failed!...");
            }
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "/admin";
    }
}
