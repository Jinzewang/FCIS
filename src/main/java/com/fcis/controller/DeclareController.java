package com.fcis.controller;

import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DeclareController {
    @RequestMapping("/modelWorkerDeclare")
    @ResponseBody
    public void getModelWorkerINFO(ModelWorker modelWorker) {
        System.out.println(modelWorker);
    }
}
