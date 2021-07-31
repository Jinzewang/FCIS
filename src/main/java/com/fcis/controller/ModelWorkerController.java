package com.fcis.controller;

import com.fcis.model.informationManagement.outstandingPersonDeclare.*;
import com.fcis.service.ModelWorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ModelWorkerController {

    @Autowired
    private ModelWorkerService modelWorkerService;

    @RequestMapping("/modelWorkerDeclare")
    public void insertFirst(String modelWorkerTitle, String modelWorkerTreatment) {
        modelWorkerService.insertTitleAndTreatment(modelWorkerTitle,modelWorkerTreatment);
    }
    @RequestMapping("/next1")
    public void insertSecond(Info info) {
        modelWorkerService.insertInfo(info);
    }
    @RequestMapping("/next2")
    public void insertThird(AddInfo addInfo) {
        modelWorkerService.insertAddInfo(addInfo);
    }
    // ���ļ��ϴ�����
    /*@RequestMapping("/next34")
    public String insertFour(CertifiedMaterials certifiedMaterials) {
        modelWorkerService.insertCertifed(certifiedMaterials);
        return "addCertified";
    }*/
    @RequestMapping("/next3")
    @ResponseBody // ������
    public String insertFive(AddCertifiedMaterials addCertifiedMaterials) {
        modelWorkerService.insertAddCertifed(addCertifiedMaterials);
        return "�걨�ɹ�";
    }

    @RequestMapping("/deleteModelWorker")
    @ResponseBody // ������
    public boolean deleteModelWorker(Integer id) {
        boolean deleteModelWorker = modelWorkerService.deleteModelWorker(id);
        return deleteModelWorker;
    }

    /**
     * ��ѯ��ģ����ϸ��Ϣ
     * @param id ��ģ��Ψһid
     * @return ������ģ����
     */
    @RequestMapping("/selectModelWorkerDetails")
    public ModelWorker selectModelWorkerDetails(HttpSession session, Integer id) {
        List<ModelWorker> details = modelWorkerService.modelWorkersDetails(id);
        session.setAttribute("details",details.get(0));
        return details.get(0);
    }
}
