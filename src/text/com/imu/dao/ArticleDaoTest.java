package com.imu.dao;

import com.imu.entity.Article;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-service.xml",
        "classpath:spring/spring-dao.xml"})
public class ArticleDaoTest {
    Article article;
    @Autowired
    ArticleDao articleDao;
    @Test
    public void addArticle() {
        article = new Article(1,1);
        System.out.println(articleDao.addArticle(article));
    }

    @Test
    public void queryArticleByDesc() {
        List<Article>articles = articleDao.queryArticleByDesc();
        for (Article article: articles
             ) {
            System.out.println(new SimpleDateFormat("yyyy-MM-dd").format(article.getArtDate()));
        }
    }

    @Test
    public void queryDetilsAllArti() {
        List<Article>articles = articleDao.queryDetilsAllArti();
        for (Article article: articles
                ) {
          System.out.println(article.getUser().toString());
        }
    }

    @Test
    public void queryArticleByUID() {
       List<Article> articles =   articleDao.queryArticleByUID("1");
        for (Article article: articles
                ) {
            System.out.println(article.getUser().toString());
        }
    }

    @Test
    public void queryByTitle() {
        List<Article> articles =   articleDao.queryByTitle("xml");
        for (Article article: articles
                ) {
            System.out.println(article.getUser().toString());
        }
    }


}