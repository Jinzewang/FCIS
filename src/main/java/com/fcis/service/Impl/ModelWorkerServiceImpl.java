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

    // ɾ����ģ���ж��Ƿ�ɹ�
    @Override
    public boolean deleteModelWorker(Integer id) {
        modelWorkerDao.deleteModelWorker(id);
        int successOrnot = modelWorkerDao.successOrnot(id);
        if (successOrnot == 1)
            return true;
        return false;
    }

    @Override //δ�ϱ�0�����ϱ�1�����϶�2��ȡ���ƺ�3��������4���ѵ���5
    public List<ModelWorker> selectModelWorkerCondition(String modelWorkerTitle
            , String modelWorkerTreatment, byte isCertified, Date dieTime
            , int currPage, int pageSize) {
        List<ModelWorker> modelWorkers = modelWorkerDao.selectModelWorkerCondition(modelWorkerTitle, modelWorkerTreatment, isCertified, dieTime);
        int firstIndex = (currPage-1)*pageSize;
        int endIndex = currPage*pageSize;
        return modelWorkers.subList(firstIndex,endIndex);
    }

    /**
     * �Ƚ�����ͳ��
     * @return
     */
    @Override
    public int selectTotalModelWorker(String stateofJob) {
        List<Integer> totalModelWorkers= modelWorkerDao.selectTotalModelWorker();
        List<Integer> dieModelWorker = modelWorkerDao.selectDieModelWorker();//������ģ��
        int alive = totalModelWorkers.size()-dieModelWorker.size();//������ģ��
        List<Integer> retireModel = modelWorkerDao.selectRetireModel(stateofJob);//������ģ��
        int onTheJob = totalModelWorkers.size()-retireModel.size();//��ְ��ģ��
        // ��������ҵ��λ�쵼����ũ����ģ���� Ȼ�����Щ��װ�� list ����
        return -1;
    }

    @Override
    public List<ModelWorker> modelWorkersDetails(Integer id) {
        List<ModelWorker> modelWorkersDetails = modelWorkerDao.modelWorkerDetails(id);
        return modelWorkersDetails;
    }
}
