package com.fcis.model.informationManagement.outstandingPersonDeclare;

public class AddCertifiedMaterials {
    private Integer id;
    private String materialsPath; //文件保存路径
    private String other; //保留字段

    @Override
    public String toString() {
        return "AddCertifiedMaterials{" +
                "id=" + id +
                ", materialsPath='" + materialsPath + '\'' +
                ", other='" + other + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMaterialsPath() {
        return materialsPath;
    }

    public void setMaterialsPath(String materialsPath) {
        this.materialsPath = materialsPath;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }
}
