package com.fcis.tools;

import com.fcis.util.GetProperties;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.Timer;

/**
 * ����ʱ����ϸ����
 */
public class TimerManager {
    //ʱ���� 15��ʱ��
    private static final long PERIOD_DAY = GetProperties.getDistancetime();

    //���캯������
    public TimerManager() throws IOException {
        //��ȡ�����������ļ��е�ʱ��
        /**���ݵ�ȷ��ʱ��*/
        String backuptime=GetProperties.getBackuptime();

        String[] time=backuptime.split(":");
        int hours=Integer.parseInt(time[0]); //2
        int minute=Integer.parseInt(time[1]); //30
        int second=Integer.parseInt(time[2]); //00

        //����util���е�����,����ʱ��
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.HOUR_OF_DAY,hours);
        calendar.set(Calendar.MINUTE, minute);
        calendar.set(Calendar.SECOND, second);

        Date date=calendar.getTime(); //��һ��ִ�ж�ʱ�����ʱ��

        //�����һ��ִ�ж�ʱ�����ʱ�� С�� ��ǰ��ʱ��
        //��ʱҪ�� ��һ��ִ�ж�ʱ�����ʱ�� ��һ�죬�Ա���������¸�ʱ���ִ�С��������һ�죬���������ִ�С�
        if (date.before(new Date())) {
            date = this.addDay(date, 1);
        }

        //������ʱ���ؼ�
        Timer timer = new Timer();

        OperationTimer task = new OperationTimer ();
        //����ָ����������ָ����ʱ�俪ʼ�����ظ��Ĺ̶��ӳ�ִ�С�
        timer.schedule(task,date,PERIOD_DAY);
    }

    // ���ӻ��������
    public Date addDay(Date date, int num) {
        Calendar startDT = Calendar.getInstance();
        startDT.setTime(date);
        startDT.add(Calendar.DAY_OF_MONTH, num);
        return startDT.getTime();
    }
}
