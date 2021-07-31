package com.fcis.mapper;

import com.fcis.model.informationManagement.advancedCollective.CollectiveInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdvancedCollectiveDao {
    /**
     * 保存先进集体信息
     * @param collectiveInfo 先进集体对象
     */
    void insertAdvanceCollective(CollectiveInfo collectiveInfo);

    /**
     * 按称号查询先进集体
     * @param collectiveTitle 集体所获称号
     * @return 返回集体一览表并分页展示
     */
    List<CollectiveInfo> selectAdvanceCollective(@Param("collectiveTitle") String collectiveTitle);


    /**
     * 按条件查询先进集体
     * @param collectiveProvance 按所属地
     * @param companyName 按单位名称
     * @param principalName 按负责人姓名
     * @param principalPhone 按负责人联系电话
     * @return
     */
    List<CollectiveInfo> selectAdvanceCondition(@Param("collectiveProvance") String collectiveProvance
            ,@Param("companyName") String companyName
            ,@Param("principalName") String principalName
            ,@Param("principalPhone") String principalPhone);
    /**
     * 删除先进集体
     * @param id 集体的id
     */
    void deleteAdvance(@Param("id") Integer id);
    // 判断删除是否成功
    int deleteSuccess(Integer id);

    // 查询先进集体详细信息
    CollectiveInfo selectCollectiveDetails(Integer id);
    /**
     * 查询 全国先进生产单位数
     * @return
     */
    List<Integer> statisticsNationalAdvance();

    /**
     * 查询 省先进生产单位数
     * @return
     */
    List<Integer> statisticsProvenceAdvance();

    /**
     * 查询 全国五一劳动奖状单位数
     * @return
     */
    List<Integer> statisticsNationalAdvance51();

    /**
     * 查询 四川省五一劳动奖状单位数
     * @return
     */
    List<Integer> statisticsProvenceAdvance51();

    /**
     * 查询 全国工人先锋号 数
     * @return
     */
    List<Integer> statisticsNationalWorkers();

    /**
     * 查询 四川省工人先锋号 数
     * @return
     */
    List<Integer> statisticsProvenceWorkers();

    /**
     * 查询 市工人先锋号 数
     * @return
     */
    List<Integer> statisticsCityWorkers();

    /**
     * 查询 企业工人先锋号 数
     * @return
     */
    List<Integer> statisticsCompanyWorkers();
}
