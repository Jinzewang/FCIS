package com.fcis.tools;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.IOException;

/**
 * ʱ������������ڶ�ʱ�������ݿ�
 */
public class OperationListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        try {
            new TimerManager();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
    }
}
