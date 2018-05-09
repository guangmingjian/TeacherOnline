package com.imu.service;


import com.imu.entity.Question;

import java.util.List;

public interface QuestionService {
    public boolean addQuestion(Question question);
    public List<Question> allQuestions();
    public Question detailsById(int id);
    public List<Question> fieldQuestion(String caid);
}
