package com.fcis.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AuditDao {
    /**
     * �����ģ
     * @param id ��ģid
     * @param modelWorkerTreatment �޸���ģ����
     * @param reviewModelWorker �������
     */
    void auditModelWorker(@Param("reviewModelWorker") String reviewModelWorker
            ,@Param("modelWorkerTreatment") String modelWorkerTreatment
            ,@Param("id") Integer id);
}
