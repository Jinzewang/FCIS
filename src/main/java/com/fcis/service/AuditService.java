package com.fcis.service;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AuditService {
    /**
     * �����ģ
     * @param modelWorkerTreatment �޸���ģ����
     * @param reviewModelWorker �������
     * @param id ��ģid
     */
    void auditModelWorker(String reviewModelWorker, String modelWorkerTreatment, Integer id);

    /**
     * ��������Ƚ�����
     * @param list �����Ƚ����˵Ĵ������������
     */
//    void batchAuditModel(List<Object> list);
}
