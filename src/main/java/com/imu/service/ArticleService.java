package com.imu.service;

import com.imu.entity.Article;

import java.util.List;

public interface ArticleService {
    public boolean writeArticle(String cataName, int uId, String artTitle, String artContent, String artHtml, String artSummary, String artDate);
    public List<Article> getAllArticleDesc();
    public List<Article> queryDetilsAllArti();
}