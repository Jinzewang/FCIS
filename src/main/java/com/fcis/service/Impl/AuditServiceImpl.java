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
     * 审核劳模
     * @param modelWorkerTreatment 修改劳模待遇
     * @param reviewModelWorker 审核批语
     * @param id 劳模id
     */
    @Override
    public void auditModelWorker(String reviewModelWorker, String modelWorkerTreatment, Integer id) {
        auditDao.auditModelWorker(reviewModelWorker,modelWorkerTreatment,id);
    }

    /**
     * 批量审核先进个人
     * @param list 批量先进个人的待遇、审核批语
     */
    /*@Override
    public void batchAuditModel(List<Object> list) {
        for (Object object : list) {
//            auditDao.auditModelWorker();
        }
    }*/
}
