package com.imu.controller;

import com.imu.dao.CategoryDao;
import com.imu.entity.Category;
import com.imu.entity.Question;
import com.imu.entity.User;
import com.imu.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class QuestionController {
    @Autowired
    QuestionService questionService;
    @Autowired
    CategoryDao categoryDao;
    List<Question> questions;
    //返回问答首页
    @RequestMapping(value = "/ques-index",method = RequestMethod.GET)
    public String quesIndex(){ return "question/question-index"; }

    //返回提问界面
    @RequestMapping(value = "/ques",method = RequestMethod.GET)
    public String ques(){ return "question/question"; }

    //问题提交处理界面
    @RequestMapping(value = "/ques-sub",method = RequestMethod.POST)
    public String quesSub(Question question,String quType, HttpSession session, HttpServletResponse response){
//        获取type对应的id
        Category category = categoryDao.getCateByNameID("0",quType);
        question.setCaId(category.getCataId());
//        获取session中的用户并设置id
        User user = (User)session.getAttribute("sess_user");
        System.out.println(user.toString());
        question.setuId(Integer.parseInt(user.getuId()));
//        获取创建日期
        SimpleDateFormat sdf =   new SimpleDateFormat( " yyyy年MM月dd日 " );
        String time = sdf.format(new Date());
        question.setQuDate(time);
        System.out.println(question.toString());
//        插入数据库中
        response.setCharacterEncoding("utf-8");

        if(questionService.addQuestion(question))
        {
            System.out.println("成功");
            return "feedback/success_update";
        }
        else {

            System.out.println("失败");
            return "feedback/failed_update";
        }

    }

    //问题清单
    @RequestMapping(value = "/ques-list",method = RequestMethod.GET)
    public String quesLists(ModelMap modelMap){
        questions = questionService.allQuestions();
        modelMap.addAttribute("questions",questions);
        return "question/question_list";
    }

}
