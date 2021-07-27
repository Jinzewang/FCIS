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
     * 删除劳模，实际修改标志该劳模被删除的字段为1
     * @param id 劳模id
     * @return 返回是否删除成功
     */
    boolean deleteModelWorker(Integer id);
}
