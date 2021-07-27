package com.fcis.model.informationManagement.outstandingPersonDeclare;

import java.io.Serializable;
import java.util.Date;

public class Info implements Serializable {
    private Integer id;
    private String modelName; //姓名
    private String sex; //性别
    private String nationality; //民族
    private Date born; //出生年月
    private String education; //教育程度
    private String provence; //所属省份/籍贯
    private String politicalState; //政治面貌
    private String organization; //工作单位
    private String jobTitle; //职务
    private Date getModelWorkerTitleTime; //获得称号时间
//    private String create_time;
    private String awardingUnit; //授予称号单位
    private String ID; //身份证号
    private String phone; //联系电话

    @Override
    public String toString() {
        return "Info{" +
                "id=" + id +
                ", modelName='" + modelName + '\'' +
                ", sex='" + sex + '\'' +
                ", nationality='" + nationality + '\'' +
                ", born=" + born +
                ", education='" + education + '\'' +
                ", provence='" + provence + '\'' +
                ", politicalState='" + politicalState + '\'' +
                ", organization='" + organization + '\'' +
                ", jobTitle='" + jobTitle + '\'' +
                ", getModelWorkerTitleTime=" + getModelWorkerTitleTime +
                ", awardingUnit='" + awardingUnit + '\'' +
                ", ID='" + ID + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
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

    public Date getBorn() {
        return born;
    }

    public void setBorn(Date born) {
        this.born = born;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getProvence() {
        return provence;
    }

    public void setProvence(String provence) {
        this.provence = provence;
    }

    public String getPoliticalState() {
        return politicalState;
    }

    public void setPoliticalState(String politicalState) {
        this.politicalState = politicalState;
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
