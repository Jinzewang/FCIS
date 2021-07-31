package com.fcis.tools;

import java.io.IOException;
import java.util.TimerTask;

public class OperationTimer extends TimerTask {
    /**
     * The action to be performed by this timer task.
     */
    @Override
    public void run() {
        try {
            new DatabaseBackUpRecoverTime();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
