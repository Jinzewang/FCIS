package com.fcis.service;

import com.fcis.model.informationManagement.outstandingPersonDeclare.*;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

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

    /**
     * 按条件查询劳模
     * @param modelWorkerTitle 按荣誉称号
     * @param modelWorkerTreatment 按劳模待遇
     * @param isCertified 按劳模状态 未上报0，已上报1，已认定2，取消称号3，已死亡4，已调动5
     * @param dieTime 按是否死亡查询
     * @return
     */
    List<ModelWorker> selectModelWorkerCondition(String modelWorkerTitle
            , String modelWorkerTreatment
            , byte isCertified
            , Date dieTime
            , int currPage,int pageSize);

    /**
     * 先进个人统计
     * @return
     */
    int selectTotalModelWorker(String stateofJob);
}
