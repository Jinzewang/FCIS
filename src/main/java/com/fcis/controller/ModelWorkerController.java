package com.fcis.controller;

import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ModelWorkerController {

    /**
     * ��������ģ�����������б���
     * @param modelWorker ��ģ�����Ƚ����ˣ�
     * @return
     */
    @RequestMapping("/modelWorkerDeclare")
    @ResponseBody
    public ModelWorker getModelWorkerINFO(ModelWorker modelWorker) {
        // ��������modelworker���浽���ݿ���ļ���
        System.out.println(modelWorker);
        return modelWorker;
    }
    public boolean deleteMOdelWorker() {
        return false;
    }
}
