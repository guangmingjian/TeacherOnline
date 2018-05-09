package com.imu.service.impl;

import com.imu.dao.CategoryDao;
import com.imu.dao.QuestionDao;
import com.imu.entity.Question;
import com.imu.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionSerIpl implements QuestionService {
    @Autowired
    QuestionDao questionDao;

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
}
