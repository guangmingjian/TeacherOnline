package com.imu.controller;

import com.imu.entity.Question;
import com.imu.entity.Response;
import com.imu.entity.User;
import com.imu.service.ResponseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class ResponseController {
    @Autowired
    ResponseService responseService;
    @RequestMapping(value = "/add-respon", method = RequestMethod.POST)
    public String addResponse(Response response, HttpSession session) {

        //获取session中的用户
        User user = (User)session.getAttribute("sess_user");
        response.setuId(Integer.parseInt(user.getuId()));
        //获取创建日期
        SimpleDateFormat sdf =   new SimpleDateFormat( " yyyy年MM月dd日 " );
        String time = sdf.format(new Date());
        response.setReDate(time);
        if(responseService.addResponse(response))
            return "feedback/success_update";
        return "feedback/failed_update";
    }
}
