package com.fcis.service;

import com.fcis.model.informationManagement.outstandingPersonDeclare.AddCertifiedMaterials;
import com.fcis.model.informationManagement.outstandingPersonDeclare.AddInfo;
import com.fcis.model.informationManagement.outstandingPersonDeclare.CertifiedMaterials;
import com.fcis.model.informationManagement.outstandingPersonDeclare.Info;
import org.springframework.stereotype.Service;

@Service
public interface ModelWorkerService {
    void insertTitleAndTreatment(String title, String treatment);
    void insertInfo(Info info);
    void insertAddInfo(AddInfo addInfo);
    void insertCertifed(CertifiedMaterials certifiedMaterials);
    void insertAddCertifed(AddCertifiedMaterials addCertifiedMaterials);

    /**
     * ɾ����ģ��ʵ���޸ı�־����ģ��ɾ�����ֶ�Ϊ1
     * @param id ��ģid
     * @return �����Ƿ�ɾ���ɹ�
     */
    boolean deleteModelWorker(Integer id);
}
