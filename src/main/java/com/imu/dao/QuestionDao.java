package com.imu.dao;


import com.imu.entity.Question;

import java.util.List;

public interface QuestionDao {
    public int addQuestion(Question question);
    public List<Question> queryAll();
}
