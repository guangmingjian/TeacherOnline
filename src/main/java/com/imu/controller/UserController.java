package com.imu.controller;

import com.google.gson.Gson;
import com.imu.entity.Article;
import com.imu.entity.User;
import com.imu.service.ArticleService;
import com.imu.service.UserService;
import com.imu.tools.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@SessionAttributes("user")
public class UserController {

    @Autowired
    UserService userService;
    @Autowired
    ArticleService articleService;
    Gson gson = new Gson();

    //返回个人中心
    @RequestMapping(value = "/personal",method = RequestMethod.GET)
    public String  personal(){
        return "personal";
    }
    //个人主页
    @RequestMapping(value = "/peopleHome",method = RequestMethod.GET)
    public String  peopleHome(String uId,ModelMap modelMap){
        modelMap.addAttribute("user",userService.getUserById(uId));
        modelMap.addAttribute("articles",articleService.queAllArtByUID(uId));
        return "peoplehome";
    }

    @RequestMapping(value = "/UserExist",method = RequestMethod.POST)
    @ResponseBody
    public String  UserExist(String email, HttpServletRequest request, HttpServletResponse response){
        //获取前端htmlco对象的值

        System.out.println("email:"+ email);
        User user = userService.isEmail(email);
        if(user == null)
        {
            System.out.println("user : null");
            return "{\"email\":0}";
        }
        else {
            System.out.println("user:存在");
            return "{\"email\":1}";
        }

    }
    /**
     * 注册功能
     */
    @RequestMapping(value = "/doReg",method = RequestMethod.POST)
    public String doReg(HttpServletRequest request, HttpServletResponse response,ModelMap map){
        System.out.println("***************注册*************");
        //构造user对象
        User user = new User();
        user.setuEmail(request.getParameter("userid"));
        user.setuPassword(request.getParameter("password"));
        user.setuName(request.getParameter("username"));
        user.setuTel(request.getParameter("tel"));
        user.setuAge(request.getParameter("age"));
        //插入数据库中
        if(userService.doReg(user)){
            //将user注入session中
            user = userService.isEmail(request.getParameter("userid"));
;            map.addAttribute("user",user);
            System.out.println("..........注册插入成功..........");
            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('regist successful!...'); window.location='/' </script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return "first_index";
//            return "redirect:WEB-INF/pages/first_index.jsp";
        }else{
            return "reg";
        }
    }
    /*
    * 检验用户名是否存在**/
    @RequestMapping(value = "/vaildUser",method = RequestMethod.POST)
    public  @ResponseBody String vaildUser(String userid){
        System.out.println("userid :"  + userid);
        Valid valid = new Valid();
        if(userService.isEmail(userid)==null){
            //邮箱不存在 可以注册 返回true
            valid.setValid(true);
        }
        else {
            System.out.println("该邮箱已经存在");
            valid.setValid(false);
        }
        //返回json格式的数据
        return gson.toJson(valid);
    }
    @RequestMapping(value = "/updateUser",method = RequestMethod.POST)
    public String  updateUser(HttpSession session,HttpServletResponse response,User user){
        System.out.println("**************接受到的user************+\n" + user.toString() );
        User sess_user= (User) session.getAttribute("sess_user");
        boolean success =  userService.updateUser(sess_user.getuId(),user);
        try {
            PrintWriter out = response.getWriter();
            if(success){
                user.setuId(sess_user.getuId());
                session.setAttribute("sess_user",user);
                out.print("update successful!...");
            }else{
                out.print("update failed!...");
            }
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "personal";
    }
}
