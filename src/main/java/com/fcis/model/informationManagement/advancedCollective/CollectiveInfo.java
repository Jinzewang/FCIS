package com.fcis.model.informationManagement.advancedCollective;

public class CollectiveInfo {
    private Integer id; //����
    private Integer isDelete = 0; //�Ƚ������Ƿ�ɾ�� ����ɾ��Ϊ1
    private String collectiveTitle; //����� �����ƺ�
    private String collectiveProvance; //������
    private String companyName; //��λ����
    private String principalName; //����������
    private String principalPhone; //��������ϵ��ʽ
    private String collectiveOutstanding; //������Ҫͻ���¼�
    private String collectiveCancel = "��"; //����ȡ���ƺ�ԭ��

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
