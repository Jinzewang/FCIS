package com.fcis.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public abstract class GetProperties {
    private static  String sqlurl = "";
    private static  String path = "";
    private static long distancetime = 0;
    private static  String backuptime = "";
    private static String path1 = "";
    private static String username = "";
    private static String password = "";
    private static String fileName = "";
    private static String dataBaseName = "";

    static {
        /**通过这个方法只能读取类路径下的properties文件*/
        Properties properties = new Properties();
        // 使用ClassLoader加载properties配置文件生成对应的输入流
        InputStream in = GetProperties.class.getClassLoader().getResourceAsStream("dbBackupRecover.properties");
        // 使用properties对象加载输入流
        try {
            properties.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }
        //获取key对应的value值
        sqlurl = properties.getProperty("sqlurl");
        path = properties.getProperty("path");
        distancetime = Long.parseLong(properties.getProperty("distancetime"));
        backuptime = properties.getProperty("backuptime");
        username = properties.getProperty("username");
        password = properties.getProperty("password");
        path1 = properties.getProperty("path1");
        fileName = properties.getProperty("fileName");
        dataBaseName = properties.getProperty("dataBaseName");
    }

    public static String getSqlurl() {
        return sqlurl;
    }

    public static void setSqlurl(String sqlurl) {
        GetProperties.sqlurl = sqlurl;
    }

    public static String getPath() {
        return path;
    }

    public static void setPath(String path) {
        GetProperties.path = path;
    }

    public static long getDistancetime() {
        return distancetime;
    }

    public static void setDistancetime(long distancetime) {
        GetProperties.distancetime = distancetime;
    }

    public static String getBackuptime() {
        return backuptime;
    }

    public static void setBackuptime(String backuptime) {
        GetProperties.backuptime = backuptime;
    }

    public static String getPath1() {
        return path1;
    }

    public static void setPath1(String path1) {
        GetProperties.path1 = path1;
    }

    public static String getUsername() {
        return username;
    }

    public static void setUsername(String username) {
        GetProperties.username = username;
    }

    public static String getPassword() {
        return password;
    }

    public static void setPassword(String password) {
        GetProperties.password = password;
    }

    public static String getFileName() {
        return fileName;
    }

    public static void setFileName(String fileName) {
        GetProperties.fileName = fileName;
    }

    public static String getDataBaseName() {
        return dataBaseName;
    }

    public static void setDataBaseName(String dataBaseName) {
        GetProperties.dataBaseName = dataBaseName;
    }
}
