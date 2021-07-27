package com.fcis.model.informationManagement.outstandingPersonDeclare;

import java.io.Serializable;
import java.util.Date;

public class CertifiedMaterials implements Serializable {
    private Integer id;
    private String awardingUnit; //授予单位
    private Date awardingTime; //授予时间
    private String recognitionFileName; //表彰决定文件名
    private Integer symbol; //文件文号
    private String recognitionUnit; //发文单位
    private Date recognitionTime; //发文时间

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
