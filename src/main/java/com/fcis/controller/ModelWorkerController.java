package com.fcis.controller;

import com.fcis.model.informationManagement.outstandingPersonDeclare.*;
import com.fcis.service.ModelWorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ModelWorkerController {

    @Autowired
    private ModelWorkerService modelWorkerService;

    @RequestMapping("/modelWorkerDeclare")
    public String insertFirst(String modelWorkerTitle, String modelWorkerTreatment) {
        modelWorkerService.insertTitleAndTreatment(modelWorkerTitle,modelWorkerTreatment);
        return "info";
    }
    @RequestMapping("/next1")
    public String insertSecond(Info info) {
        modelWorkerService.insertInfo(info);
        return "addInfo";
    }
    @RequestMapping("/next2")
    public String insertThird(AddInfo addInfo) {
        modelWorkerService.insertAddInfo(addInfo);
        return "certified";
    }
    @RequestMapping("/next3")
    public String insertFour(CertifiedMaterials certifiedMaterials) {
        modelWorkerService.insertCertifed(certifiedMaterials);
        return "addCertified";
    }
    @RequestMapping("/next4")
    @ResponseBody // 待处理
    public String insertFive(AddCertifiedMaterials addCertifiedMaterials) {
        modelWorkerService.insertAddCertifed(addCertifiedMaterials);
        return "申报成功";
    }

    @RequestMapping("/deleteModelWorker")
    @ResponseBody // 待处理
    public boolean deleteModelWorker(Integer id) {
        boolean deleteModelWorker = modelWorkerService.deleteModelWorker(id);
        return deleteModelWorker;
    }
}
