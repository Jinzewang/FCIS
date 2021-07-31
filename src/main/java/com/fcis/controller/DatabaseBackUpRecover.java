package com.fcis.controller;

import com.fcis.util.GetProperties;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.*;

/**
 * 数据库的备份与还原
 */
@Controller
public class DatabaseBackUpRecover {
    //    public static void main(String[] args) throws IOException{
//        backup("d:\\d.sql");
//        //recover("d:\\d.sql");
//    }

    @RequestMapping(value = "/backupDatabase")
    public boolean backupDatabase() {
        boolean backup = backup("localhost", GetProperties.getUsername(), GetProperties.getPassword(), GetProperties.getPath1()
                , GetProperties.getFileName(), GetProperties.getDataBaseName());
        return backup;
    }

    @RequestMapping("/recoverDataBase")
    public boolean recoverDataBase() {
        boolean recover = recover(GetProperties.getPath1(), "localhost", GetProperties.getDataBaseName()
                , GetProperties.getUsername(), GetProperties.getPassword());
        return recover;
    }
    public static void backup(String path) throws IOException{
        Runtime runtime = Runtime.getRuntime();
        //-u后面是用户名，-p是密码-p后面最好不要有空格，-family是数据库的名字
        Process process = runtime.exec(GetProperties.getSqlurl());
        InputStream inputStream = process.getInputStream();//得到输入流，写成.sql文件
        InputStreamReader reader = new InputStreamReader(inputStream);
        BufferedReader br = new BufferedReader(reader);
        String s = null;
        StringBuffer sb = new StringBuffer();
        while((s = br.readLine()) != null){
            sb.append(s+"\r\n");
        }
        s = sb.toString();
        System.out.println(s);
        File file = new File(path);
        file.getParentFile().mkdirs();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(s.getBytes());
        fileOutputStream.close();
        br.close();
        reader.close();
        inputStream.close();
    }
    public static void recover(String path) throws IOException{
        Runtime runtime = Runtime.getRuntime();
        //-u后面是用户名，-p是密码-p后面最好不要有空格，-family是数据库的名字，--default-character-set=utf8，这句话一定的加
        //我就是因为这句话没加导致程序运行成功，但是数据库里面的内容还是以前的内容，最好写上完成的sql放到cmd中一运行才知道报错了
        //错误信息：
        //mysql: Character set 'utf-8' is not a compiled character set and is not specified in the '
        //C:\Program Files\MySQL\MySQL Server 5.5\share\charsets\Index.xml' file ERROR 2019 (HY000): Can't
        // initialize character set utf-8 (path: C:\Program Files\MySQL\MySQL Server 5.5\share\charsets\)，
        //又是讨人厌的编码问题，在恢复的时候设置一下默认的编码就可以了。
        Process process = runtime.exec("mysql -u root -p root --default-character-set=utf8 huadee_fcis");
        OutputStream outputStream = process.getOutputStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(path)));
        String str = null;
        StringBuffer sb = new StringBuffer();
        while((str = br.readLine()) != null){
            sb.append(str+"\r\n");
        }
        str = sb.toString();
        System.out.println(str);
        OutputStreamWriter writer = new OutputStreamWriter(outputStream,"utf-8");
        writer.write(str);
        writer.flush();
        outputStream.close();
        br.close();
        writer.close();
    }

    /**
     * @param hostIP ip地址，可以是本机也可以是远程
     * @param userName 数据库的用户名
     * @param password 数据库的密码
     * @param savePath 备份的路径
     * @param fileName 备份的文件名
     * @param databaseName 需要备份的数据库的名称
     * @return
     */
    public static boolean backup(String hostIP, String userName, String password, String savePath, String fileName,
                                 String databaseName) {
        fileName +=".sql";
        File saveFile = new File(savePath);
        if (!saveFile.exists()) {// 如果目录不存在
            saveFile.mkdirs();// 创建文件夹
        }
        if (!savePath.endsWith(File.separator)) {
            savePath = savePath + File.separator;
        }

        //拼接命令行的命令
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("mysqldump").append(" --opt").append(" -h").append(hostIP);
        stringBuilder.append(" --user=").append(userName).append(" --password=").append(password)
                .append(" --lock-all-tables=true");
        stringBuilder.append(" --result-file=").append(savePath + fileName).append(" --default-character-set=utf8 ")
                .append(databaseName);
        try {
            //调用外部执行exe文件的javaAPI
            Process process = Runtime.getRuntime().exec(stringBuilder.toString());
            if (process.waitFor() == 0) {// 0 表示线程正常终止。
                return true;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * @param filepath 数据库备份的脚本路径
     * @param ip IP地址
     * @param database 数据库名称
     * @param userName 用户名
     * @param password 密码
     * @return
     */
    public static boolean recover(String filepath,String ip,String database, String userName,String password) {


        String stmt1 = "mysqladmin -h "+ip+" -u "+userName+" -p"+password+" create "+database;

        String stmt2 = "mysql -h "+ip+" -u "+userName+" -p "+password+" "+database+" < " + filepath;

        String[] cmd = { "cmd", "/c", stmt2 };

        try {
            Runtime.getRuntime().exec(stmt1);
            Runtime.getRuntime().exec(cmd);
            System.out.println("数据已从 " + filepath + " 导入到数据库中");
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
