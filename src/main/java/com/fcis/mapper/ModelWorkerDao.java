package com.fcis.mapper;

import com.fcis.model.informationManagement.outstandingPersonDeclare.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

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

    /**
     * ��������ѯ��ģ
     * @param modelWorkerTitle �������ƺ�
     * @param modelWorkerTreatment ����ģ����
     * @param isCertified ����ģ״̬ δ�ϱ�0�����ϱ�1�����϶�2��ȡ���ƺ�3��������4���ѵ���5
     * @param dieTime ���Ƿ�������ѯ
     * @return ����
     */
    List<ModelWorker> selectModelWorkerCondition(@Param("modelWorkerTitle") String modelWorkerTitle
            , @Param("modelWorkerTreatment") String modelWorkerTreatment
            , @Param("isCertified") byte isCertified
            , @Param("dieTime") Date dieTime);

    /** ��ѯ��������ģ����
     * Ϊ�ų���ģ�޸ĺ��ٲ�������ݣ�ѡ���ѯ��ģ��״̬
     * @return
     */
    List<Integer> selectTotalModelWorker();

    /**
     * ��ѯ����������ģ����
     * @return
     */
    List<Integer> selectDieModelWorker();

    /**
     * ��ѯ������ģ��
     * @return
     */
    List<Integer> selectRetireModel(@Param("stateofJob") String stateofJob);

    /**
     * ��ѯ��ģ������Ϣ
     * @param id ��ģid
     * @return
     */
    List<ModelWorker> modelWorkerDetails(Integer id);

    /**
     * ��Excel�����е�����ģ��������Ϣ
     * @return
     */
    List<ModelWorker> findAllModelWorkers();
}
