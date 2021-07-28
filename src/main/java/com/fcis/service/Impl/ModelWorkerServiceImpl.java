package com.fcis.service.Impl;

import com.fcis.mapper.ModelWorkerDao;
import com.fcis.model.informationManagement.outstandingPersonDeclare.*;
import com.fcis.service.ModelWorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

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
        return false;
    }

    @Override //未上报0，已上报1，已认定2，取消称号3，已死亡4，已调动5
    public List<ModelWorker> selectModelWorkerCondition(String modelWorkerTitle
            , String modelWorkerTreatment, byte isCertified, Date dieTime
            , int currPage, int pageSize) {
        List<ModelWorker> modelWorkers = modelWorkerDao.selectModelWorkerCondition(modelWorkerTitle, modelWorkerTreatment, isCertified, dieTime);
        int firstIndex = (currPage-1)*pageSize;
        int endIndex = currPage*pageSize;
        return modelWorkers.subList(firstIndex,endIndex);
    }

    /**
     * 先进个人统计
     * @return
     */
    @Override
    public int selectTotalModelWorker(String stateofJob) {
        List<Integer> totalModelWorkers= modelWorkerDao.selectTotalModelWorker();
        List<Integer> dieModelWorker = modelWorkerDao.selectDieModelWorker();//死亡劳模数
        int alive = totalModelWorkers.size()-dieModelWorker.size();//健在劳模数
        List<Integer> retireModel = modelWorkerDao.selectRetireModel(stateofJob);//退休劳模数
        int onTheJob = totalModelWorkers.size()-retireModel.size();//在职劳模数
        // 还差企事业单位领导数，农村劳模数等 然后把这些封装成 list 返回
        return -1;
    }

    @Override
    public List<ModelWorker> modelWorkersDetails(Integer id) {
        List<ModelWorker> modelWorkersDetails = modelWorkerDao.modelWorkerDetails(id);
        return modelWorkersDetails;
    }
}
