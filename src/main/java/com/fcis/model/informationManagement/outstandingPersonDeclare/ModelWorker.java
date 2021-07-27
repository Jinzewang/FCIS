package com.fcis.model.informationManagement.outstandingPersonDeclare;

import java.io.Serializable;
import java.util.Date;

public class ModelWorker implements Serializable {
    private Integer id;
    private Integer isDelete = 0; //劳模是否被删除 被删除改为1
    private String modelWorkerTitle; //称号
    private String modelWorkerTreatment; //待遇
    private Info info; //基本信息
    private AddInfo addinfo; //附加信息
    private CertifiedMaterials certifiedMaterials; //认定材料
    private AddCertifiedMaterials addCertified; //附加材料
    private Date dieTime; //死亡时间
    private String transferDes; //调动去向
    private byte isCertified = 0; //状态 （未上报0，已上报1，已认定2，取消称号3，已死亡4，已调动5）
    private String reviewModelWorker; //审核批语
    private String reasonforCancel; //取消称号原因

    @Override
    public String toString() {
        return "ModelWorker{" +
                "id=" + id +
                ", isDelete=" + isDelete +
                ", modelWorkerTitle='" + modelWorkerTitle + '\'' +
                ", modelWorkerTreatment='" + modelWorkerTreatment + '\'' +
                ", info=" + info +
                ", addinfo=" + addinfo +
                ", certifiedMaterials=" + certifiedMaterials +
                ", addCertified=" + addCertified +
                ", dieTime=" + dieTime +
                ", transferDes='" + transferDes + '\'' +
                ", isCertified=" + isCertified +
                ", reviewModelWorker='" + reviewModelWorker + '\'' +
                ", reasonforCancel='" + reasonforCancel + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
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

    public Info getInfo() {
        return info;
    }

    public void setInfo(Info info) {
        this.info = info;
    }

    public AddInfo getAddinfo() {
        return addinfo;
    }

    public void setAddinfo(AddInfo addinfo) {
        this.addinfo = addinfo;
    }

    public CertifiedMaterials getCertifiedMaterials() {
        return certifiedMaterials;
    }

    public void setCertifiedMaterials(CertifiedMaterials certifiedMaterials) {
        this.certifiedMaterials = certifiedMaterials;
    }

    public AddCertifiedMaterials getAddCertified() {
        return addCertified;
    }

    public void setAddCertified(AddCertifiedMaterials addCertified) {
        this.addCertified = addCertified;
    }

    public Date getDieTime() {
        return dieTime;
    }

    public void setDieTime(Date dieTime) {
        this.dieTime = dieTime;
    }

    public String getTransferDes() {
        return transferDes;
    }

    public void setTransferDes(String transferDes) {
        this.transferDes = transferDes;
    }

    public byte getIsCertified() {
        return isCertified;
    }

    public void setIsCertified(byte isCertified) {
        this.isCertified = isCertified;
    }

    public String getReviewModelWorker() {
        return reviewModelWorker;
    }

    public void setReviewModelWorker(String reviewModelWorker) {
        this.reviewModelWorker = reviewModelWorker;
    }

    public String getReasonforCancel() {
        return reasonforCancel;
    }

    public void setReasonforCancel(String reasonforCancel) {
        this.reasonforCancel = reasonforCancel;
    }
}
