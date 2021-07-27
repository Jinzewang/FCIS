package com.fcis.model.informationManagement.outstandingPersonDeclare;

import java.io.Serializable;
import java.util.Date;

public class CertifiedMaterials implements Serializable {
    private Integer id;
    private String awardingUnit; //���赥λ
    private Date awardingTime; //����ʱ��
    private String recognitionFileName; //���þ����ļ���
    private Integer symbol; //�ļ��ĺ�
    private String recognitionUnit; //���ĵ�λ
    private Date recognitionTime; //����ʱ��

    @Override
    public String toString() {
        return "CertifiedMaterials{" +
                "id=" + id +
                ", awardingUnit='" + awardingUnit + '\'' +
                ", awardingTime=" + awardingTime +
                ", recognitionFileName='" + recognitionFileName + '\'' +
                ", symbol=" + symbol +
                ", recognitionUnit='" + recognitionUnit + '\'' +
                ", recognitionTime=" + recognitionTime +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAwardingUnit() {
        return awardingUnit;
    }

    public void setAwardingUnit(String awardingUnit) {
        this.awardingUnit = awardingUnit;
    }

    public Date getAwardingTime() {
        return awardingTime;
    }

    public void setAwardingTime(Date awardingTime) {
        this.awardingTime = awardingTime;
    }

    public String getRecognitionFileName() {
        return recognitionFileName;
    }

    public void setRecognitionFileName(String recognitionFileName) {
        this.recognitionFileName = recognitionFileName;
    }

    public Integer getSymbol() {
        return symbol;
    }

    public void setSymbol(Integer symbol) {
        this.symbol = symbol;
    }

    public String getRecognitionUnit() {
        return recognitionUnit;
    }

    public void setRecognitionUnit(String recognitionUnit) {
        this.recognitionUnit = recognitionUnit;
    }

    public Date getRecognitionTime() {
        return recognitionTime;
    }

    public void setRecognitionTime(Date recognitionTime) {
        this.recognitionTime = recognitionTime;
    }
}
