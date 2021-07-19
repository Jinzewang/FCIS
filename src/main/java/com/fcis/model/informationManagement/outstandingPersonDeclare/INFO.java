package com.fcis.model.informationManagement.outstandingPersonDeclare;

import java.util.Date;

public class INFO {
    private String modelName;
    private String sex;
    private String nationality;
    private Date born;
    private String education;
    private String politicalState;
    private String organization;
    private String jobTitle;
    private Date getModelWorkerTitleTime;
    private String awardingUnit;
    private String ID;
    private String phone;

    @Override
    public String toString() {
        return "INFO{" +
                ", modelName='" + modelName + '\'' +
                ", sex=" + sex +
                ", nationality=" + nationality +
                ", born=" + born +
                ", education=" + education +
                ", politicalState=" + politicalState +
                ", organization='" + organization + '\'' +
                ", jobTitle='" + jobTitle + '\'' +
                ", getModelWorkerTitleTime=" + getModelWorkerTitleTime +
                ", awardingUnit='" + awardingUnit + '\'' +
                ", ID='" + ID + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getPoliticalState() {
        return politicalState;
    }

    public void setPoliticalState(String politicalState) {
        this.politicalState = politicalState;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public Date getBorn() {
        return born;
    }

    public void setBorn(Date born) {
        this.born = born;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public Date getGetModelWorkerTitleTime() {
        return getModelWorkerTitleTime;
    }

    public void setGetModelWorkerTitleTime(Date getModelWorkerTitleTime) {
        this.getModelWorkerTitleTime = getModelWorkerTitleTime;
    }

    public String getAwardingUnit() {
        return awardingUnit;
    }

    public void setAwardingUnit(String awardingUnit) {
        this.awardingUnit = awardingUnit;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
