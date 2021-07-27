package com.fcis.controller;

import com.fcis.service.AuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuditModelWorkerController {

    @Autowired
    private AuditService auditService;
    @RequestMapping("/auditModelWorker")
    public String auditModelWorker(String reviewModelWorker,String modelWorkerTreatment,Integer id) {
        auditService.auditModelWorker(reviewModelWorker,modelWorkerTreatment,id);
        return "";
    }
}
