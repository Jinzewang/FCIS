package com.fcis.service.Impl;

import com.fcis.mapper.ModelWorkerDao;
import com.fcis.model.informationManagement.outstandingPersonDeclare.AddCertifiedMaterials;
import com.fcis.model.informationManagement.outstandingPersonDeclare.AddInfo;
import com.fcis.model.informationManagement.outstandingPersonDeclare.CertifiedMaterials;
import com.fcis.model.informationManagement.outstandingPersonDeclare.Info;
import com.fcis.service.ModelWorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ModelWorkerServiceImpl implements ModelWorkerService {

    @Autowired
    private ModelWorkerDao modelWorkerDao;

    @Override
    public void insertTitleAndTreatment(String title, String treatment) {
        modelWorkerDao.insertTitleAndTreatment(title,treatment);
    }

    @Override
    public void insertInfo(Info info) {
        modelWorkerDao.insertInfo(info);
    }

    @Override
    public void insertAddInfo(AddInfo addInfo) {
        modelWorkerDao.insertAddInfo(addInfo);
    }

    @Override
    public void insertCertifed(CertifiedMaterials certifiedMaterials) {
        modelWorkerDao.insertCertifed(certifiedMaterials);
    }

    @Override
    public void insertAddCertifed(AddCertifiedMaterials addCertifiedMaterials) {
        modelWorkerDao.insertAddCertifed(addCertifiedMaterials);
    }

    // 删除劳模并判断是否成功
    @Override
    public boolean deleteModelWorker(Integer id) {
        modelWorkerDao.deleteModelWorker(id);
        int successOrnot = modelWorkerDao.successOrnot(id);
        if (successOrnot == 1)
            return true;
        else
            return false;
    }
}
