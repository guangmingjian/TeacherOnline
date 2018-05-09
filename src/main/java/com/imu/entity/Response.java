package com.imu.entity;

public class Response {
    int reId;
    int uId;
    int quId;
    String reHtml;
    String reMd;
    String reDate;
    User user;

    @Override
    public String toString() {
        return "Response{" +
                "reId=" + reId +
                ", uId=" + uId +
                ", quId=" + quId +
                ", reHtml='" + reHtml + '\'' +
                ", reMd='" + reMd + '\'' +
                ", reDate='" + reDate + '\'' +
                ", user=" + user +
                '}';
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getReId() {
        return reId;
    }

    public void setReId(int reId) {
        this.reId = reId;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public int getQuId() {
        return quId;
    }

    public void setQuId(int quId) {
        this.quId = quId;
    }

    public String getReHtml() {
        return reHtml;
    }

    public void setReHtml(String reHtml) {
        this.reHtml = reHtml;
    }

    public String getReMd() {
        return reMd;
    }

    public void setReMd(String reMd) {
        this.reMd = reMd;
    }

    public String getReDate() {
        return reDate;
    }

    public void setReDate(String reDate) {
        this.reDate = reDate;
    }
}
