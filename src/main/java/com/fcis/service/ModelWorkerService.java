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
     * ɾ����ģ��ʵ���޸ı�־����ģ��ɾ�����ֶ�Ϊ1
     * @param id ��ģid
     * @return �����Ƿ�ɾ���ɹ�
     */
    boolean deleteModelWorker(Integer id);

    /**
     * ��������ѯ��ģ
     * @param modelWorkerTitle �������ƺ�
     * @param modelWorkerTreatment ����ģ����
     * @param isCertified ����ģ״̬ δ�ϱ�0�����ϱ�1�����϶�2��ȡ���ƺ�3��������4���ѵ���5
     * @param dieTime ���Ƿ�������ѯ
     * @return
     */
    List<ModelWorker> selectModelWorkerCondition(String modelWorkerTitle
            , String modelWorkerTreatment
            , byte isCertified
            , Date dieTime
            , int currPage,int pageSize);

    /**
     * �Ƚ�����ͳ��
     * @return
     */
    int selectTotalModelWorker(String stateofJob);
}
