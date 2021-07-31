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
    // 差文件上传处理
    /*@RequestMapping("/next34")
    public String insertFour(CertifiedMaterials certifiedMaterials) {
        modelWorkerService.insertCertifed(certifiedMaterials);
        return "addCertified";
    }*/
    @RequestMapping("/next3")
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

    /**
     * 查询劳模的详细信息
     * @param id 劳模的唯一id
     * @return 返回劳模对象
     */
    @RequestMapping("/selectModelWorkerDetails")
    public ModelWorker selectModelWorkerDetails(HttpSession session, Integer id) {
        List<ModelWorker> details = modelWorkerService.modelWorkersDetails(id);
        session.setAttribute("details",details.get(0));
        return details.get(0);
    }
}
