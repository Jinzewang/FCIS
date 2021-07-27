package com.fcis.model.informationManagement.advancedCollective;

public class CollectiveInfo {
    private Integer id; //主键
    private Integer isDelete = 0; //先进集体是否被删除 若被删除为1
    private String collectiveTitle; //集体的 荣誉称号
    private String collectiveProvance; //所属地
    private String companyName; //单位名称
    private String principalName; //负责人姓名
    private String principalPhone; //负责人联系方式
    private String collectiveOutstanding; //集体主要突出事迹
    private String collectiveCancel = "无"; //集体取消称号原因

    @Override
    public String toString() {
        return "CollectiveInfo{" +
                "id=" + id +
                ", isDelete=" + isDelete +
                ", collectiveTitle='" + collectiveTitle + '\'' +
                ", collectiveProvance='" + collectiveProvance + '\'' +
                ", companyName='" + companyName + '\'' +
                ", principalName='" + principalName + '\'' +
                ", principalPhone='" + principalPhone + '\'' +
                ", collectiveOutstanding='" + collectiveOutstanding + '\'' +
                ", collectiveCancel='" + collectiveCancel + '\'' +
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

    public String getCollectiveOutstanding() {
        return collectiveOutstanding;
    }

    public void setCollectiveOutstanding(String collectiveOutstanding) {
        this.collectiveOutstanding = collectiveOutstanding;
    }

    public String getCollectiveTitle() {
        return collectiveTitle;
    }

    public void setCollectiveTitle(String collectiveTitle) {
        this.collectiveTitle = collectiveTitle;
    }

    public String getCollectiveProvance() {
        return collectiveProvance;
    }

    public void setCollectiveProvance(String collectiveProvance) {
        this.collectiveProvance = collectiveProvance;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getPrincipalName() {
        return principalName;
    }

    public void setPrincipalName(String principalName) {
        this.principalName = principalName;
    }

    public String getPrincipalPhone() {
        return principalPhone;
    }

    public void setPrincipalPhone(String principalPhone) {
        this.principalPhone = principalPhone;
    }

    public String getCollectiveOutstandign() {
        return collectiveOutstanding;
    }

    public void setCollectiveOutstandign(String collectiveOutstandign) {
        this.collectiveOutstanding = collectiveOutstandign;
    }

    public String getCollectiveCancel() {
        return collectiveCancel;
    }

    public void setCollectiveCancel(String collectiveCancel) {
        this.collectiveCancel = collectiveCancel;
    }
}
