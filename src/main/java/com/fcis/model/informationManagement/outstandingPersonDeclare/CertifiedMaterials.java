package com.fcis.model.informationManagement.outstandingPersonDeclare;

import java.io.Serializable;
import java.util.Date;

public class CertifiedMaterials implements Serializable {
    private String awardingUnit;
    private Date awardingTime;
    private String recognitionFileName;
    private Integer Symbol;
    private String recognitionUnit;
    private Date recognitionTime;

    @Override
    public String toString() {
        return "CertifiedMaterials{" +
                "awardingUnit='" + awardingUnit + '\'' +
                ", awardingTime=" + awardingTime +
                ", recognitionFileName='" + recognitionFileName + '\'' +
                ", Symbol=" + Symbol +
                ", recognitionUnit='" + recognitionUnit + '\'' +
                ", recognitionTime=" + recognitionTime +
                '}';
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
        return Symbol;
    }

    public void setSymbol(Integer symbol) {
        Symbol = symbol;
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
