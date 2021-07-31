package com.fcis.service;

import com.fcis.model.informationManagement.advancedCollective.CollectiveInfo;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

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
    // 判断是否逻辑删除成功
    boolean deleteAdvance(Integer id);

    /**
     * 按条件查询集体
     * @param collectiveProvance 按所属地
     * @param companyName 按单位名称
     * @param principalName 按负责人姓名
     * @param principalPhone 按负责人电话
     * @param currPage 当前页数
     * @param pageSize 页内记录条数
     * @return
     */
    List<CollectiveInfo> selectAdvanceCondition(String collectiveProvance, String companyName
            ,String principalName
            ,String principalPhone
            ,int currPage,int pageSize);

    /**
     * 统计先进集体
     * @return
     */
    List<Integer> statisticsCollective();

    /**
     * 按id查询先进集体详细页面
     * @param id 先进集体id
     * @return
     */
    CollectiveInfo selectCollectiveDetails(Integer id);
}
