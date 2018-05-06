package com.imu.entity;

public class Question {
    int quId;
    int uId;
    int caId;
    String quTitle;
    int quValues;
    String quContent;
    String quHtml;
    String quDate;
    User user;
    Category category;

    @Override
    public String toString() {
        return "Question{" +
                "quId=" + quId +
                ", uId=" + uId +
                ", caId=" + caId +
                ", quTitle='" + quTitle + '\'' +
                ", quValues=" + quValues +
                ", quContent='" + quContent + '\'' +
                ", quHtml='" + quHtml + '\'' +
                ", quDate='" + quDate + '\'' +
                ", user=" + user +
                ", category=" + category +
                '}';
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getQuId() {
        return quId;
    }

    public void setQuId(int quId) {
        this.quId = quId;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public int getCaId() {
        return caId;
    }

    public void setCaId(int caId) {
        this.caId = caId;
    }

    public String getQuTitle() {
        return quTitle;
    }

    public void setQuTitle(String quTitle) {
        this.quTitle = quTitle;
    }

    public int getQuValues() {
        return quValues;
    }

    public void setQuValues(int quValues) {
        this.quValues = quValues;
    }

    public String getQuContent() {
        return quContent;
    }

    public void setQuContent(String quContent) {
        this.quContent = quContent;
    }

    public String getQuHtml() {
        return quHtml;
    }

    public void setQuHtml(String quHtml) {
        this.quHtml = quHtml;
    }

    public String getQuDate() {
        return quDate;
    }

    public void setQuDate(String quDate) {
        this.quDate = quDate;
    }
}
