package com.imu.tools;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * 与日期/时间有关的常用操作
 * @author ccs
 *
 */
public class DateUtil {

    /**
     * 将java.sql.Date类型的日期转换成字符串
     * @param date java.sql.Date类型的日期,格式为yyyy-MM-dd
     * @return 表示日期的字符串
     */
    public static String DateToString(Date date){
        return date.toString();
    }

    /**
     * 将java.sql.Time类型的日期转换成字符串
     * @param time java.sql.Time类型的时间,格式为hh:mm:ss
     * @return 表示时间的字符串
     */
    public static String TimeToString(Time time){
        return time.toString();
    }

    /**
     * 将字符串表示的日期转换成java.sql.Date类型
     * @param strDate 表示日期的字符串,格式为yyyy-MM-dd
     * @return java.sql.Date类型的日期
     */
    public static Date StringToDate(String strDate){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date util_date = null;
        try {
            //把字符串strDate格式化成java.util.Date类型
            util_date = format.parse(strDate);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //返回距离1970-01-01的毫秒数
        long count = util_date.getTime();
        //再从java.util.Date类型转换成java.sql.Date类型
        java.sql.Date sql_date = new java.sql.Date(count);
        return sql_date;
    }

    /**
     * 将字符串表示的时间转换成java.sql.Time类型
     * @param strTime 表示日期的字符串,格式为hh:mm:ss
     * @return java.sql.Time类型的时间
     */
    public static Time StringToTime(String strTime){
        SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss");
        java.util.Date util_date = null;
        try {
            //截取后八位,表示时分秒
            strTime = strTime.substring(strTime.length()-8,strTime.length());
            //把字符串strTime格式化成java.util.Date类型
            //#########################################################################
            //此转换方法不可行，原因是12:10:10会被转换成00:10:10
            //#########################################################################
            util_date = format.parse(strTime);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //返回距离1970-01-01的毫秒数
        long count = util_date.getTime();
        //再从java.util.Date类型转换成java.sql.Time类型
        java.sql.Time sql_time = new java.sql.Time(count);
        return sql_time;
    }

    /**
     * 获取当前系统时间，并格式化
     * @return
     */
    public static Date getNowDate(){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date date=null;
        try {
            //获取当前系统时间，并格式化，转换成Date类型
            date= sdf.parse(sdf.format(new java.util.Date()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        long count = date.getTime();
        java.sql.Date sql_date = new java.sql.Date(count);
        return sql_date;
    }

    /**
     * 获取当前日期的下一天的日期
     * @param nowDate 当前日期
     * @return
     */
    public static String getNextDay(String nowDate){
        //获取日历的实例
        Calendar c = Calendar.getInstance();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date date=null;
        try {
            //获取当前系统时间，并格式化，转换成Date类型
            date= sdf.parse(nowDate);
        } catch (Exception e) {
            e.printStackTrace();
        }
        c.setTime(date);
        int day = c.get(Calendar.DATE);
        c.set(Calendar.DATE, day+1);
        String nextDay = sdf.format(c.getTime());
        return nextDay;
    }

}