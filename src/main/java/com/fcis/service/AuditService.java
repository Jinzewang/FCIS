package com.fcis.service;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AuditService {
    /**
     * 审核劳模
     * @param modelWorkerTreatment 修改劳模待遇
     * @param reviewModelWorker 审核批语
     * @param id 劳模id
     */
    void auditModelWorker(String reviewModelWorker, String modelWorkerTreatment, Integer id);

    /**
     * 批量审核先进个人
     * @param list 批量先进个人的待遇、审核批语
     */
//    void batchAuditModel(List<Object> list);
}
