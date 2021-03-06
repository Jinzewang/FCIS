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
        return "先进集体申报成功";
    }

    /**
     * 按称号查询先进集体并分页展示
     * @param collectiveTitle 称号
     * @return 返回所有集体
     */
    @RequestMapping("/selectAdvance")
    public String selectAdvanceCollective(String collectiveTitle
            /*, @PathVariable("currPage") int currPage*/, HttpSession session) {
        System.out.println("获取先进集体请求");
        List<CollectiveInfo> allCollectives = advanceCollectiveService.selectAdvance(collectiveTitle, 1/*currPage*/, 10);
        session.setAttribute("allCollectives",allCollectives);
        return "redirect:/jsp/advanced_group.jsp";
    }

    /**
     * 删除先进集体
     * @param id 集体的id
     * @return 返回是否成功
     */
    @RequestMapping("/deleteAdvance")
    public boolean deleteAdvance(Integer id) {
        boolean deleteAdvance = advanceCollectiveService.deleteAdvance(id);
        return deleteAdvance;
    }

    /**
     * 按条件查询先进集体
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
     * 查询先进集体的详细信息
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
     * 统计先进集体 按荣誉称号进行二位饼状图分析
     * @return
     */
    @RequestMapping("/statisticsCollective")
    public List<Integer> statisticsAdvance() {
        return advanceCollectiveService.statisticsCollective();
    }
}
