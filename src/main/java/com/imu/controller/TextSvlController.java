package com.imu.controller;

import com.imu.entity.User;
import com.imu.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class TextSvlController {
    @Autowired
    ArticleService articleService;
    /**
     * 响应上传文本/TextSvl的请求
     * 拦截上传文本的请求，text即为所得到的html格式的文本
     * 如果上传成功则返回给ajax的对话框‘上传成功’的字样
    * */
    @RequestMapping(value="/TextSvl",method= RequestMethod.POST)
    public void textSvl(HttpSession session, HttpServletRequest request, HttpServletResponse response, ModelMap modelMap){
        //获取前端htmlco对象的值
        User user = (User) session.getAttribute("sess_user");
        String html = request.getParameter("html");
        String md = request.getParameter("md");
        String title = request.getParameter("title");
        String summary = request.getParameter("summary");
        String cata = request.getParameter("cata");
        SimpleDateFormat sdf =   new SimpleDateFormat( " yyyy年MM月dd日 " );

        String time = sdf.format(new Date());
        boolean succ =  articleService.writeArticle(cata,Integer.parseInt(user.getuId()),title,md,html,summary,time);
        System.out.println("****TextSvl:  "+ md +title+summary+cata);
        System.out.println("******************html*****************\n" + html);
        //设置相应的字符集
        response.setCharacterEncoding("utf-8");
        if (succ){
            try {
//          如果上传成功则返回给ajax的对话框‘上传成功’的字样
                response.getWriter().write("上传成功 <br /> "+md);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else {
            System.out.println("上传失败");
            try {
//          如果上传成功则返回给ajax的对话框‘上传成功’的字样
                response.getWriter().write("上传失败，请重新上传 <br /> "+md);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
    /**
     * 后续处理博客详情界面*/
    @RequestMapping(value="/show",method= RequestMethod.GET)
    public String show(@RequestParam("htmltext")String htmltext,ModelMap modelMap){
        System.out.println("show");
        modelMap.addAttribute("htmltext",htmltext);
        return "details";
    }
}
