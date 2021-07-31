package com.fcis.controller;

import com.fcis.model.informationManagement.advancedCollective.CollectiveInfo;
import com.fcis.service.AdvanceCollectiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
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
     * @return �������м���
     */
    @RequestMapping("/selectAdvance/{currPage}")
    public List<CollectiveInfo> selectAdvanceCollective(String collectiveTitle
            , @PathVariable("currPage") int currPage, HttpSession session) {
        List<CollectiveInfo> allCollectives = advanceCollectiveService.selectAdvance(collectiveTitle, currPage, 10);
        session.setAttribute("allCollectives",allCollectives);
        return allCollectives;
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

    /**
     * ��������ѯ�Ƚ�����
     * @param collectiveProvance
     * @param companyName
     * @param principalName
     * @param principalPhone
     * @param currPage
     * @param pageSize
     * @return
     */
    public List<CollectiveInfo> selectAdvanceCodition(String collectiveProvance, String companyName
            ,String principalName
            ,String principalPhone
            ,int currPage,int pageSize) {
        List<CollectiveInfo> collectiveInfos = advanceCollectiveService.selectAdvanceCondition(collectiveProvance,companyName,principalName,principalPhone,currPage,pageSize);

        return collectiveInfos;
    }

    /**
     * ��ѯ�Ƚ��������ϸ��Ϣ
     * @param id id
     * @param session session
     * @return
     */
    @RequestMapping("/selectCollectiveDetails")
    public CollectiveInfo selectCollectiveDetails(Integer id, HttpSession session) {
        CollectiveInfo collectiveInfo = advanceCollectiveService.selectCollectiveDetails(id);
        session.setAttribute("collectiveInfo",collectiveInfo);
        return collectiveInfo;
    }
    /**
     * ͳ���Ƚ����� �������ƺŽ��ж�λ��״ͼ����
     * @return
     */
    @RequestMapping("/statisticsCollective")
    public List<Integer> statisticsAdvance() {
        return advanceCollectiveService.statisticsCollective();
    }
}
