package com.imu.service;

import java.util.Date;

public interface ArticleService {
    public boolean writeArticle(String cataName, int uId, String artTitle, String artContent, String artHtml, String artSummary, Date artDate);
}
