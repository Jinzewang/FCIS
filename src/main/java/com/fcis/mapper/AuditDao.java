package com.fcis.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AuditDao {
    /**
     * 审核劳模
     * @param id 劳模id
     * @param modelWorkerTreatment 修改劳模待遇
     * @param reviewModelWorker 审核批语
     */
    void auditModelWorker(@Param("reviewModelWorker") String reviewModelWorker
            ,@Param("modelWorkerTreatment") String modelWorkerTreatment
            ,@Param("id") Integer id);
}
