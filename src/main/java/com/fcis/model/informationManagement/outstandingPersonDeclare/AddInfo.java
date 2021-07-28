package com.fcis.model.informationManagement.outstandingPersonDeclare;

import java.io.Serializable;

public class AddInfo implements Serializable {
    private Integer id;
    private String stateofHealth; //健康状况
    private String stateofFamily; //家庭情况
    private String stateofJob; //就业情况
    private String outstandingDeeds; //主要突出事迹
    private byte modelWorkerTitle; //是否已获得称号 0否 1是

    @Override
    public String toString() {
        return "AddInfo{" +
                "id=" + id +
                ", stateofHealth='" + stateofHealth + '\'' +
                ", stateofFamily='" + stateofFamily + '\'' +
                ", stateofJob='" + stateofJob + '\'' +
                ", outstandingDeeds='" + outstandingDeeds + '\'' +
                ", modelWorkerTitle=" + modelWorkerTitle +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStateofHealth() {
        return stateofHealth;
    }

    public void setStateofHealth(String stateofHealth) {
        this.stateofHealth = stateofHealth;
    }

    public String getStateofFamily() {
        return stateofFamily;
    }

    public void setStateofFamily(String stateofFamily) {
        this.stateofFamily = stateofFamily;
    }

    public String getStateofJob() {
        return stateofJob;
    }

    public void setStateofJob(String stateofJob) {
        this.stateofJob = stateofJob;
    }

    public String getOutstandingDeeds() {
        return outstandingDeeds;
    }

    public void setOutstandingDeeds(String outstandingDeeds) {
        this.outstandingDeeds = outstandingDeeds;
    }

    public byte getModelWorkerTitle() {
        return modelWorkerTitle;
    }

    public void setModelWorkerTitle(byte modelWorkerTitle) {
        this.modelWorkerTitle = modelWorkerTitle;
    }
}
