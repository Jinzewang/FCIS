package com.fcis.model.informationManagement.outstandingPersonDeclare;

import java.io.Serializable;

public class ModelWorker implements Serializable {
    private String modelWorkerTitle;
    private String modelWorkerTreatment;
    private INFO info;
    private ADDINFO addinfo;
    private CertifiedMaterials certifiedMaterials;
    private byte isCertified = 0;

    @Override
    public String toString() {
        return "ModelWorker{" +
                "modelWorkerTitle='" + modelWorkerTitle + '\'' +
                ", modelWorkerTreatment='" + modelWorkerTreatment + '\'' +
                ", info=" + info +
                ", addinfo=" + addinfo +
                ", certifiedMaterials=" + certifiedMaterials +
                ", isCertified=" + isCertified +
                '}';
    }

    public CertifiedMaterials getCertifiedMaterials() {
        return certifiedMaterials;
    }

    public void setCertifiedMaterials(CertifiedMaterials certifiedMaterials) {
        this.certifiedMaterials = certifiedMaterials;
    }

    public String getModelWorkerTitle() {
        return modelWorkerTitle;
    }

    public void setModelWorkerTitle(String modelWorkerTitle) {
        this.modelWorkerTitle = modelWorkerTitle;
    }

    public String getModelWorkerTreatment() {
        return modelWorkerTreatment;
    }

    public void setModelWorkerTreatment(String modelWorkerTreatment) {
        this.modelWorkerTreatment = modelWorkerTreatment;
    }

    public INFO getInfo() {
        return info;
    }

    public void setInfo(INFO info) {
        this.info = info;
    }

    public ADDINFO getAddinfo() {
        return addinfo;
    }

    public void setAddinfo(ADDINFO addinfo) {
        this.addinfo = addinfo;
    }
}
