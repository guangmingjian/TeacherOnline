package com.imu.controller;

import com.imu.dao.CategoryDao;
import com.imu.entity.Category;
import com.imu.entity.User;
import com.imu.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class BlogController {
    @Autowired
    ArticleService articleService;
    @Autowired
    CategoryDao categoryDao;
//    博客首页
    @RequestMapping(value = "/blog",method = RequestMethod.GET)
    public  String blogIndex(ModelMap modelMap){
        modelMap.addAttribute("articles",articleService.queryDetilsAllArti());
        return "blog/blog_index";
    }
    //相应领域的博客
    @RequestMapping(value = "/fieldBlogs",method = RequestMethod.GET)
    public  String fieldBlogs(ModelMap modelMap,String caId){
        modelMap.addAttribute("articles", articleService.queFiledArticles(caId));
        return "blog/blog_index";
    }
    //写博客
    @RequestMapping(value = "/wri-blog",method = RequestMethod.GET)
    public  String writeBlog(ModelMap modelMap,HttpSession session){
        //获取session中的用户
        User user = (User)session.getAttribute("sess_user");
        modelMap.addAttribute("categorys",categoryDao.getCateByUId(user.getuId()));
        return "blog/wri_blog";
    }

    //博客详情
    @RequestMapping(value = "/blogDetils",method = RequestMethod.GET)
    public  String blogDetils(String artId,ModelMap modelMap){
        modelMap.addAttribute("blogDetil", articleService.queryArticleByID(artId));
        return "blog/blog-detils";
    }
    //我的博客
    @RequestMapping(value = "/myBlogs",method = RequestMethod.GET)
    public  String myBlogs(HttpSession session,ModelMap modelMap){
        User user = (User)session.getAttribute("sess_user");
        modelMap.addAttribute("myArticles", articleService.queAllArtByUID(user.getuId()));
        return "blog/my_blogs";
    }


}
