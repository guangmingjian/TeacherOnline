package com.imu.dao;

import com.imu.entity.Article;

import java.util.List;

public interface ArticleDao {
    public boolean addArticle(Article article);
    public List<Article> queryArticleByDesc();
    public List<Article> queryDetilsAllArti();
    public Article queryArticleByID(String artId);
    public List<Article> queryArticleByUID(String uId);
}
