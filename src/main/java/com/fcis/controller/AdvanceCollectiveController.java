package com.fcis.controller;

import com.fcis.model.informationManagement.advancedCollective.CollectiveInfo;
import com.fcis.service.AdvanceCollectiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class AdvanceCollectiveController {

    @Autowired
    private AdvanceCollectiveService advanceCollectiveService;
    @RequestMapping("/declareAdvanceCollective")
    @ResponseBody
    public String insertCollective(CollectiveInfo collectiveInfo) {
        advanceCollectiveService.insertAdvanceCollective(collectiveInfo);
        return "�Ƚ������걨�ɹ�";
    }

    /**
     * ���ƺŲ�ѯ�Ƚ����岢��ҳչʾ
     * @param collectiveTitle �ƺ�
     * @param currPage ��ǰҳ��
     * @param pageSize ҳ���¼����
     * @return �������м���
     */
    @RequestMapping("/selectAdvance/{currPage}/{pageSize}")
    public List<CollectiveInfo> selectAdvanceCollective(String collectiveTitle
            , @PathVariable("currPage") int currPage
            , @PathVariable("pageSize") int pageSize) {
        return advanceCollectiveService.selectAdvance(collectiveTitle,currPage,pageSize);
    }

    /**
     * ɾ���Ƚ�����
     * @param id �����id
     * @return �����Ƿ�ɹ�
     */
    @RequestMapping("/deleteAdvance")
    public boolean deleteAdvance(Integer id) {
        boolean deleteAdvance = advanceCollectiveService.deleteAdvance(id);
        return deleteAdvance;
    }
}