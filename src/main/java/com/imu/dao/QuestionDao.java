package com.imu.dao;


import com.imu.entity.Question;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuestionDao {
    public int addQuestion(Question question);
    public List<Question> queryAll();
    public Question queryById(int quId);
    public List<Question> queryByCaID(String caid);
    public int updateQuestionFin(@Param("reId")int reId,@Param("quId")int quId);
    public List<Question> searchQuestion(@Param("label") String label);
    public int delete(String id);
}
