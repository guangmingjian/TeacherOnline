package com.imu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class TextSvlController {
    /**
     * 响应上传文本/TextSvl的请求
     * 拦截上传文本的请求，text即为所得到的html格式的文本
     * 如果上传成功则返回给ajax的对话框‘上传成功’的字样
    * */
    @RequestMapping(value="/TextSvl",method= RequestMethod.POST)
    public void hello(HttpServletRequest request, HttpServletResponse response,ModelMap modelMap){
        //获取前端htmlco对象的值
        String text = request.getParameter("text");
        System.out.println("TextSvl: /n "+ text);
        //设置相应的字符集
        response.setCharacterEncoding("utf-8");
        try {
//          如果上传成功则返回给ajax的对话框‘上传成功’的字样
            response.getWriter().write("上传成功 <br /> "+text);
        } catch (IOException e) {
            e.printStackTrace();
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
