package com.imu.service.impl;

import com.imu.dao.CategoryDao;
import com.imu.dao.QuestionDao;
import com.imu.dao.ResponseDao;
import com.imu.dao.UserDao;
import com.imu.entity.Question;
import com.imu.entity.Response;
import com.imu.entity.User;
import com.imu.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionSerIpl implements QuestionService {
    @Autowired
    QuestionDao questionDao;
    @Autowired
    UserDao userDao;
    @Autowired
    ResponseDao responseDao;

    public boolean addQuestion(Question question) {
        int flag = questionDao.addQuestion(question);
        if(flag>0)
            return true;
        else return false;

    }

    public List<Question> allQuestions() {
        return questionDao.queryAll();
    }

    public Question detailsById(int id) {
        return questionDao.queryById(id);
    }

    public List<Question> fieldQuestion(String caid) {
        return questionDao.queryByCaID(caid);
    }

    public boolean adaptResponse(String quId, String reId) {
        Response response =responseDao.queryByReId(reId);
        Question question = questionDao.queryById(Integer.parseInt(quId));
        User requesUser = userDao.getUserById(String.valueOf(question.getuId()));
        //如果金钱不够则返回false
        if((Integer.parseInt(requesUser.getValues())-question.getQuValues())<0)
            return false;
        System.out.println(Integer.parseInt(requesUser.getValues())+"  "+(Integer.parseInt(requesUser.getValues())-question.getQuValues())+" "
        + question.getQuValues());
        //发布问题的用户减少金钱
        userDao.updateValue(requesUser.getuId(),Integer.parseInt(requesUser.getValues())-question.getQuValues());
        //被采纳的增加金钱
        userDao.updateValue(String.valueOf(response.getuId()),Integer.parseInt(userDao.getUserById(String.valueOf(response.getuId())).getValues())+question.getQuValues());
        questionDao.updateQuestionFin(Integer.parseInt(reId),Integer.parseInt(quId));
        return true;
    }

    public List<Question> queryQuestions(String label) {
        return questionDao.searchQuestion(label);
    }

}
