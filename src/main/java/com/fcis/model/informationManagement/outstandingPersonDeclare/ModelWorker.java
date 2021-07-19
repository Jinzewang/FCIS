package com.fcis.model.informationManagement.outstandingPersonDeclare;

public class ModelWorker {
    private String modelWorkerTitle;
    private String modelWorkerTreatment;
    private INFO info;
    private ADDINFO addinfo;
    private Integer state;

    @Override
    public String toString() {
        return "ModelWorker{" +
                "modelWorkerTitle='" + modelWorkerTitle + '\'' +
                ", modelWorkerTreatment='" + modelWorkerTreatment + '\'' +
                ", info=" + info +
                ", addinfo=" + addinfo +
                ", state=" + state +
                '}';
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

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
