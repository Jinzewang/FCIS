package com.fcis.mapper;

import com.fcis.model.informationManagement.outstandingPersonDeclare.AddCertifiedMaterials;
import com.fcis.model.informationManagement.outstandingPersonDeclare.AddInfo;
import com.fcis.model.informationManagement.outstandingPersonDeclare.CertifiedMaterials;
import com.fcis.model.informationManagement.outstandingPersonDeclare.Info;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ModelWorkerDao {
    // �����Ƚ�������Ϣ�����ݿ���
    void insertTitleAndTreatment(@Param("title") String title, @Param("treatment") String treatment);
    void insertInfo(@Param("info") Info info);
    void insertAddInfo(AddInfo addInfo);
    void insertCertifed(CertifiedMaterials certifiedMaterials);
    void insertAddCertifed(AddCertifiedMaterials addCertifiedMaterials);

    // ɾ����ģ
    void deleteModelWorker(@Param("id") Integer id);
    // ��ѯ��ģ�Ƿ�ɾ���ɹ�
    int successOrnot(@Param("id") Integer id);
}
