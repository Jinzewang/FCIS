package com.fcis.mapper;

import com.fcis.model.informationManagement.outstandingPersonDeclare.AddCertifiedMaterials;
import com.fcis.model.informationManagement.outstandingPersonDeclare.AddInfo;
import com.fcis.model.informationManagement.outstandingPersonDeclare.CertifiedMaterials;
import com.fcis.model.informationManagement.outstandingPersonDeclare.Info;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ModelWorkerDao {
    // 保存先进个人信息到数据库中
    void insertTitleAndTreatment(@Param("title") String title, @Param("treatment") String treatment);
    void insertInfo(@Param("info") Info info);
    void insertAddInfo(AddInfo addInfo);
    void insertCertifed(CertifiedMaterials certifiedMaterials);
    void insertAddCertifed(AddCertifiedMaterials addCertifiedMaterials);

    // 删除劳模
    void deleteModelWorker(@Param("id") Integer id);
    // 查询劳模是否删除成功
    int successOrnot(@Param("id") Integer id);
}
