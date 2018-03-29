package com.imu.tools;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.ParseException;
/***
 * 将当前日期转化为数据库识别的类型*/
public class TransformDate {
    /**
     * 直接将当前时间只按日期(时间为0)作为mysql时间戳字段的条件
     * 最终返回时间类型java.sql.Date
     */
    public Date transformCurDate(){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
        java.sql.Date timePara  = null;
        try {
            timePara = new java.sql.Date(new Date().getTime());
            System.out.println(timePara);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return timePara;
    }
    /**
     * 将java的当前时间转成指定格式(yyyy-MM-0100:00:00")作为mysql时间戳字段的条件
     *  最终返回时间类型java.sql.Date
     */
    public Date transformCurYearMon(){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
        String time = format.format(new Date()).concat("-0100:00:00");
        java.sql.Date timePara  = null;
        try {
            timePara = new java.sql.Date(format.parse(time).getTime());
            System.out.println(timePara);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return timePara;
    }

    /**
     * 将java的当前时间转成Timestamp作为mysql时间戳字段的条件
     *  最终返回时间类型java.sql.Timestamp
     */
    public static Timestamp testData() {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-ddhh:mm:ss");
            Timestamp date =  java.sql.Timestamp.valueOf("2012-12-1201:12:11");
            System.out.println(date);
            return date;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  null;
    }
    public static void main(String[]args) {
//        testData();
        new TransformDate().transformCurDate();
    }
}
