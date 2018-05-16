package com.imu.controller;

import com.imu.entity.Admin;
import com.imu.entity.Article;
import com.imu.entity.Question;
import com.imu.entity.User;
import com.imu.service.*;
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
public class AdminController {
    @Autowired
    UserService userService;
    @Autowired
    ArticleService articleService;
    @Autowired
    QuestionService questionService;
    @Autowired
    ResponseService responseService;
    @Autowired
    AdminService adminService;
    //返回admin登陆界面
    @RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
    public String adminLogin(ModelMap modelMap) {
        System.out.println("***************adminlogin*********** ");
        return "admin/adminlogin";
    }
    //处理admin登录
    @RequestMapping(value = "/doAdminLog",method = RequestMethod.POST)
    public String doLogin(Admin admin, HttpServletResponse response, ModelMap modelMap,HttpSession session){
        Admin ad = adminService.dolog(admin.getEmail(),admin.getPassword());
        response.setCharacterEncoding("utf-8");
        System.out.println("***************doAdminLog*********** ");
        if(ad == null)
        {
            System.out.println("***************doAdminLog*********** ");
            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('email or password is error...'); window.location='/adminlogin' </script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "/adminlogin";
        }
        else {
            session.setAttribute("admin",ad);
            return "redirect:/admin";
        }
    }
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

    //下面是文章管理
    //返回文章管理界面
    @RequestMapping(value = "/article-manager", method = RequestMethod.GET)
    public String articleManager(ModelMap modelMap) {
        modelMap.addAttribute("articles",articleService.queryDetilsAllArti());
        return "admin/article-manage";
    }
    //返回文章管理界面
    @RequestMapping(value = "/article-detail", method = RequestMethod.GET)
    public String articleDetails(ModelMap modelMap,String id) {
        modelMap.addAttribute("blogDetil",articleService.queryArticleByID(id));
        return "admin/article-detils";
    }
    //删除文章
    @RequestMapping(value = "/doDeleteArt", method = RequestMethod.GET)
    public String doDeleteArt(ModelMap modelMap, String id, HttpServletResponse response) {
        System.out.println("-------------deleteArticle---------------------");
        if(articleService.delete(id))
        {
            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('delete successful...'); window.location='/article-manager' </script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "/article-manager";
        }
        else {

            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('delete failed...');  window.location='/article-manager'</script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "/article-manager";
        }

    }

    //问题管理部分
    //返回问题管理界面
    @RequestMapping(value = "/questionManager", method = RequestMethod.GET)
    public String questionManager(ModelMap modelMap) {
        modelMap.addAttribute("questions",questionService.allQuestions());
        return "admin/question-manage";
    }
    //问题详情
    @RequestMapping(value = "/quesDetail",method = RequestMethod.GET)
    public String quesDetails(ModelMap modelMap,String queId){
        Question question = questionService.detailsById(Integer.parseInt(queId));
        modelMap.addAttribute("question",question);
        modelMap.addAttribute("responses",responseService.responsesByquId(Integer.parseInt(queId)));
        return "admin/ques-detils";
    }
    //删除问题
    @RequestMapping(value = "/doDeleteQues", method = RequestMethod.GET)
    public String doDeleteQues(ModelMap modelMap, String id, HttpServletResponse response) {
        System.out.println("-------------deleteQuestion---------------------");
        if(questionService.deleteQuestion(id))
        {
            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('delete successful...'); window.location='/questionManager' </script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "/article-manager";
        }
        else {

            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('delete failed...');  window.location='/questionManager'</script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "/questionManager";
        }

    }
}
