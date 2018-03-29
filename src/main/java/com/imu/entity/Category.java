package com.imu.entity;

public class Category {
    int cataId;
    String uId;
    String cataName;

    public Category() {
    }

    public Category(String uId, String cataName) {
        this.uId = uId;
        this.cataName = cataName;
    }

    public int getCataId() {
        return cataId;
    }

    public void setCataId(int cataId) {
        this.cataId = cataId;
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public String getCataName() {
        return cataName;
    }

    public void setCataName(String cataName) {
        this.cataName = cataName;
    }

    @Override
    public String toString() {
        return "Category{" +
                "cataId=" + cataId +
                ", uId='" + uId + '\'' +
                ", cataName='" + cataName + '\'' +
                '}';
    }
}
