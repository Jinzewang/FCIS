package com.fcis.model.informationManagement.outstandingPersonDeclare;

import java.io.Serializable;
import java.util.Date;

public class Info implements Serializable {
    private Integer id;
    private String modelName; //����
    private String sex; //�Ա�
    private String nationality; //����
    private Date born; //��������
    private String education; //�����̶�
    private String provence; //����ʡ��/����
    private String politicalState; //������ò
    private String organization; //������λ
    private String jobTitle; //ְ��
    private Date getModelWorkerTitleTime; //��óƺ�ʱ��
//    private String create_time;
    private String awardingUnit; //����ƺŵ�λ
    private String ID; //���֤��
    private String phone; //��ϵ�绰

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
