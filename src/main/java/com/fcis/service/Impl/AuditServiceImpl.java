package com.fcis.service.Impl;

import com.fcis.mapper.AuditDao;
import com.fcis.service.AuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuditServiceImpl implements AuditService {

    @Autowired
    private AuditDao auditDao;
    /**
     * �����ģ
     * @param modelWorkerTreatment �޸���ģ����
     * @param reviewModelWorker �������
     * @param id ��ģid
     */
    @Override
    public void auditModelWorker(String reviewModelWorker, String modelWorkerTreatment, Integer id) {
        auditDao.auditModelWorker(reviewModelWorker,modelWorkerTreatment,id);
    }

    /**
     * ��������Ƚ�����
     * @param list �����Ƚ����˵Ĵ������������
     */
    /*@Override
    public void batchAuditModel(List<Object> list) {
        for (Object object : list) {
//            auditDao.auditModelWorker();
        }
    }*/
}
