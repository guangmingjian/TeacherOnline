package com.imu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QuestionController {
    //返回问答首页
    @RequestMapping(value = "/ques-index",method = RequestMethod.GET)
    public String quesIndex(){ return "question-index"; }

    //返回提问界面
    @RequestMapping(value = "/ques",method = RequestMethod.GET)
    public String ques(){ return "question"; }
}
