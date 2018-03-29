package com.imu.entity;

public class Article {
    int artId;
    int artCateid;
    int uId;
    String artTitle;
    String artContent;
    String artHtml;
    String artSummary;
    String artDate;
    Category category;
    User user;

    public Article() {
    }

    public Article(int artCateid, int uId) {
        this.artCateid = artCateid;
        this.uId = uId;
    }

    public Article(int artCateid,int uId, String artTitle, String artContent, String artHtml, String artSummary, String artDate) {
        this.artCateid = artCateid;
        this.uId = uId;
        this.artTitle = artTitle;
        this.artContent = artContent;
        this.artHtml = artHtml;
        this.artSummary = artSummary;
        this.artDate = artDate;
    }

    public Article(int artId, int artCateid, int uId, String artTitle, String artContent, String artHtml, String artSummary, String artDate) {
        this.artId = artId;
        this.artCateid = artCateid;
        this.uId = uId;
        this.artTitle = artTitle;
        this.artContent = artContent;
        this.artHtml = artHtml;
        this.artSummary = artSummary;
        this.artDate = artDate;
    }

    @Override
    public String toString() {
        return "Article{" +
                "artId=" + artId +
                ", artCateid=" + artCateid +
                ", uId=" + uId +
                ", artTitle='" + artTitle + '\'' +
                ", artContent='" + artContent + '\'' +
                ", artHtml='" + artHtml + '\'' +
                ", artSummary='" + artSummary + '\'' +
                ", artDate=" + artDate +
                ", category=" + category +
                ", user=" + user +
                '}';
    }

    public int getArtId() {
        return artId;
    }

    public void setArtId(int artId) {
        this.artId = artId;
    }

    public int getArtCateid() {
        return artCateid;
    }

    public void setArtCateid(int artCateid) {
        this.artCateid = artCateid;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public String getArtTitle() {
        return artTitle;
    }

    public void setArtTitle(String artTitle) {
        this.artTitle = artTitle;
    }

    public String getArtContent() {
        return artContent;
    }

    public void setArtContent(String artContent) {
        this.artContent = artContent;
    }

    public String getArtHtml() {
        return artHtml;
    }

    public void setArtHtml(String artHtml) {
        this.artHtml = artHtml;
    }

    public String getArtSummary() {
        return artSummary;
    }

    public void setArtSummary(String artSummary) {
        this.artSummary = artSummary;
    }

    public String getArtDate() {
        return artDate;
    }

    public void setArtDate(String artDate) {
        this.artDate = artDate;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
