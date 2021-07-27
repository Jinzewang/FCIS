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
        return "先进集体申报成功";
    }

    /**
     * 按称号查询先进集体并分页展示
     * @param collectiveTitle 称号
     * @param currPage 当前页码
     * @param pageSize 页面记录条数
     * @return 返回所有集体
     */
    @RequestMapping("/selectAdvance/{currPage}/{pageSize}")
    public List<CollectiveInfo> selectAdvanceCollective(String collectiveTitle
            , @PathVariable("currPage") int currPage
            , @PathVariable("pageSize") int pageSize) {
        return advanceCollectiveService.selectAdvance(collectiveTitle,currPage,pageSize);
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
}
