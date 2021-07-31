package com.fcis.tools;

import com.fcis.util.GetProperties;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DatabaseBackUpRecoverTime {
    static String sqlNum;
    //��ȡ�����ļ��е���Ϣ
    //MySql�İ�װbinĿ¼·����dump�Ȳ���
    static String sqlurl= GetProperties.getSqlurl();
    //���汸���ļ���·��������
    static String path=GetProperties.getPath();

    public DatabaseBackUpRecoverTime() throws IOException {
        backup(); // �������ݿ�
        System.out.println("�������ݿ�ɹ�!");
    }

    public static void backup(){
        try {
            //�����뵱ǰ��JavaӦ�ó��������ʱ����
            Runtime rt =Runtime.getRuntime();
            // ���� ����mysql�İ�װĿ¼������
            Process child = rt.exec(sqlurl);
            // ���õ�������Ϊutf-8�����������utf-8
            // �ѽ���ִ���еĿ���̨�����Ϣд��.sql�ļ����������˱����ļ���ע��������Կ���̨��Ϣ���ж�������ᵼ�½��̶����޷�����
            InputStream in = child.getInputStream();// ����̨�������Ϣ��Ϊ������
            InputStreamReader xx = new InputStreamReader(in, "utf-8");
            // �������������Ϊutf-8�����������utf-8����������ж����������
            String inStr;
            StringBuffer sb = new StringBuffer("");
            String outStr;
            // ��Ͽ���̨�����Ϣ�ַ���
            BufferedReader br = new BufferedReader(xx);
            while ((inStr = br.readLine()) != null) {
                sb.append(inStr + "\r\n");
            }
            outStr = sb.toString();
            // Ҫ�����������õ�sqlĿ���ļ���
            Date date = new Date();
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            //ע��:sqlNumΪһ���Զ��幤�����е�static���͵�Date����,�Լ����ü���
            sqlNum = f.format(date);
            path = path.split("-")[0]+"-"+sqlNum+".sql";
            FileOutputStream fout = new FileOutputStream(path);
            OutputStreamWriter writer = new OutputStreamWriter(fout, "utf-8");
            writer.write(outStr);
            writer.flush();
            in.close();
            xx.close();
            br.close();
            writer.close();
            fout.close();
            System.out.println("");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
