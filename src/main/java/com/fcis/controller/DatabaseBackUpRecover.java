package com.fcis.controller;

import com.fcis.util.GetProperties;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.*;

/**
 * ���ݿ�ı����뻹ԭ
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
        //-u�������û�����-p������-p������ò�Ҫ�пո�-family�����ݿ������
        Process process = runtime.exec(GetProperties.getSqlurl());
        InputStream inputStream = process.getInputStream();//�õ���������д��.sql�ļ�
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
        //-u�������û�����-p������-p������ò�Ҫ�пո�-family�����ݿ�����֣�--default-character-set=utf8����仰һ���ļ�
        //�Ҿ�����Ϊ��仰û�ӵ��³������гɹ����������ݿ���������ݻ�����ǰ�����ݣ����д����ɵ�sql�ŵ�cmd��һ���в�֪��������
        //������Ϣ��
        //mysql: Character set 'utf-8' is not a compiled character set and is not specified in the '
        //C:\Program Files\MySQL\MySQL Server 5.5\share\charsets\Index.xml' file ERROR 2019 (HY000): Can't
        // initialize character set utf-8 (path: C:\Program Files\MySQL\MySQL Server 5.5\share\charsets\)��
        //����������ı������⣬�ڻָ���ʱ������һ��Ĭ�ϵı���Ϳ����ˡ�
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
     * @param hostIP ip��ַ�������Ǳ���Ҳ������Զ��
     * @param userName ���ݿ���û���
     * @param password ���ݿ������
     * @param savePath ���ݵ�·��
     * @param fileName ���ݵ��ļ���
     * @param databaseName ��Ҫ���ݵ����ݿ������
     * @return
     */
    public static boolean backup(String hostIP, String userName, String password, String savePath, String fileName,
                                 String databaseName) {
        fileName +=".sql";
        File saveFile = new File(savePath);
        if (!saveFile.exists()) {// ���Ŀ¼������
            saveFile.mkdirs();// �����ļ���
        }
        if (!savePath.endsWith(File.separator)) {
            savePath = savePath + File.separator;
        }

        //ƴ�������е�����
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("mysqldump").append(" --opt").append(" -h").append(hostIP);
        stringBuilder.append(" --user=").append(userName).append(" --password=").append(password)
                .append(" --lock-all-tables=true");
        stringBuilder.append(" --result-file=").append(savePath + fileName).append(" --default-character-set=utf8 ")
                .append(databaseName);
        try {
            //�����ⲿִ��exe�ļ���javaAPI
            Process process = Runtime.getRuntime().exec(stringBuilder.toString());
            if (process.waitFor() == 0) {// 0 ��ʾ�߳�������ֹ��
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
     * @param filepath ���ݿⱸ�ݵĽű�·��
     * @param ip IP��ַ
     * @param database ���ݿ�����
     * @param userName �û���
     * @param password ����
     * @return
     */
    public static boolean recover(String filepath,String ip,String database, String userName,String password) {


        String stmt1 = "mysqladmin -h "+ip+" -u "+userName+" -p"+password+" create "+database;

        String stmt2 = "mysql -h "+ip+" -u "+userName+" -p "+password+" "+database+" < " + filepath;

        String[] cmd = { "cmd", "/c", stmt2 };

        try {
            Runtime.getRuntime().exec(stmt1);
            Runtime.getRuntime().exec(cmd);
            System.out.println("�����Ѵ� " + filepath + " ���뵽���ݿ���");
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
