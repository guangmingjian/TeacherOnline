package com.imu.controller;

import com.imu.dao.CategoryDao;
import com.imu.entity.Category;
import com.imu.entity.Question;
import com.imu.entity.User;
import com.imu.service.QuestionService;
import com.imu.service.ResponseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class QuestionController {
    @Autowired
    QuestionService questionService;
    @Autowired
    ResponseService responseService;
    @Autowired
    CategoryDao categoryDao;
    List<Question> questions;
    //返回问答首页
    @RequestMapping(value = "/ques-index",method = RequestMethod.GET)
    public String quesIndex(ModelMap modelMap){
        questions = questionService.allQuestions();
        modelMap.addAttribute("questions",questions);
        return "question/question-index";
    }

    //返回提问界面
    @RequestMapping(value = "/ques",method = RequestMethod.GET)
    public String ques(ModelMap modelMap){
//        获取管理员添加的问题种类
        modelMap.addAttribute("categories",categoryDao.getCateByUId("0"));
        return "question/question";
    }

    //问题提交处理控制
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
    //问题详情
    @RequestMapping(value = "/ques-details",method = RequestMethod.GET)
    public String quesDetails(ModelMap modelMap,String queId){
        Question question = questionService.detailsById(Integer.parseInt(queId));
        modelMap.addAttribute("question",question);
        modelMap.addAttribute("responses",responseService.responsesByquId(Integer.parseInt(queId)));
        return "question/ques-detils";
    }
    //某一领域问题清单
    @RequestMapping(value = "/quesFieldList",method = RequestMethod.GET)
    public String quesfieldLists(String caId,ModelMap modelMap){
        questions = questionService.fieldQuestion(caId);
        modelMap.addAttribute("questions",questions);
        return "question/question_list";
    }
    //采纳问题
    @RequestMapping(value = "/acceptResponse",method = RequestMethod.GET)
    public String accept(String reId,String quId,HttpServletResponse response,ModelMap modelMap){
        if( questionService.adaptResponse(quId,reId)) {
            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('update success...'); window.location='/ques-details?queId=" +quId+
                        "' </script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "question/ques-detils";
        }
       else{
            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('update failed...money is not enough');" +
                        "window.location='/ques-details?queId=" +quId+
                        "' </script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "/ques-details?queId"+quId;

        }
    }
}
