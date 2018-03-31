package com.imu.service.impl;

import com.imu.dao.ArticleDao;
import com.imu.dao.CategoryDao;
import com.imu.entity.Article;
import com.imu.entity.Category;
import com.imu.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public  class ArticleServiceImpl implements ArticleService{
    @Autowired
    CategoryDao categoryDao;
    @Autowired
    ArticleDao articleDao;
    public boolean writeArticle(String cataName, int uId, String artTitle, String artContent, String artHtml, String artSummary, String artDate) {
        Category category =  categoryDao.getCateByNameID(String.valueOf(uId),cataName);
        Article article = new Article(category.getCataId(),uId, artTitle, artContent, artHtml, artSummary,artDate);
        if(articleDao.addArticle(article))
            return true;
        return false;
    }



    public List<Article> getAllArticleDesc() {
        return articleDao.queryArticleByDesc();
    }

    public List<Article> queryDetilsAllArti() {
        return articleDao.queryDetilsAllArti();
    }

    public Article queryArticleByID(String id) {
        return articleDao.queryArticleByID(id);
    }

    public List<Article>  queAllArtByUID(String uId) {
        return articleDao.queryArticleByUID(uId);
    }
}
