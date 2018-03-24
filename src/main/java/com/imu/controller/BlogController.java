package com.imu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BlogController {
//    博客首页
    @RequestMapping(value = "/blog",method = RequestMethod.GET)
    public  String blogIndex(){ return "blog_index" ;}
    //写博客
    @RequestMapping(value = "/wri-blog",method = RequestMethod.GET)
    public  String writeBlog(){ return "write-blog" ;}


}
