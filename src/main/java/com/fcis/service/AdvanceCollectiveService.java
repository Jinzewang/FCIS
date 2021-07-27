package com.fcis.service;

import com.fcis.model.informationManagement.advancedCollective.CollectiveInfo;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Component
public interface AdvanceCollectiveService {
    /**
     * 保存先进集体信息
     * @param collectiveInfo 先进集体
     */
    void insertAdvanceCollective(CollectiveInfo collectiveInfo);

    /**
     * 按条件查询先进集体
     * @param collectiveTitle 集体称号
     * @param currPage 当前页码
     * @param pageSize 页面记录条数
     * @return 返回所有集体
     */
    List<CollectiveInfo> selectAdvance(String collectiveTitle,int currPage, int pageSize);

    boolean deleteAdvance(Integer id);
}
