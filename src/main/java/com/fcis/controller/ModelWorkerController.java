package com.fcis.controller;

import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ModelWorkerController {

    /**
     * 传来的劳模对象，需对其进行保存
     * @param modelWorker 劳模对象（先进个人）
     * @return
     */
    @RequestMapping("/modelWorkerDeclare")
    @ResponseBody
    public ModelWorker getModelWorkerINFO(ModelWorker modelWorker) {
        // 将传来的modelworker保存到数据库或文件？
        System.out.println(modelWorker);
        return modelWorker;
    }
    public boolean deleteMOdelWorker() {
        return false;
    }
}
