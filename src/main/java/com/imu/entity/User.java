package com.imu.entity;
/**
 * 用户表*/
public class User {
    String uId;
    String uEmail;
    String uPassword;
    String uName;
    String uTel;
    String uAge;

    public User() {
    }

    public User(String uEmail, String uPassword, String uName, String uTel, String uAge) {
        this.uEmail = uEmail;
        this.uPassword = uPassword;
        this.uName = uName;
        this.uTel = uTel;
        this.uAge = uAge;
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuTel() {
        return uTel;
    }

    public void setuTel(String uTel) {
        this.uTel = uTel;
    }

    public String getuAge() {
        return uAge;
    }

    public void setuAge(String uAge) {
        this.uAge = uAge;
    }

    @Override
    public String toString() {
        return "User{" +
                "uId='" + uId + '\'' +
                ", uEmail='" + uEmail + '\'' +
                ", uPassward='" + uPassword + '\'' +
                ", uName='" + uName + '\'' +
                ", uTel='" + uTel + '\'' +
                ", uAge='" + uAge + '\'' +
                '}';
    }
}
