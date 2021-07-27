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
     * 删除先进集体
     * @param id 集体的id
     */
    void deleteAdvance(@Param("id") Integer id);
    // 判断删除是否成功
    int deleteSuccess(Integer id);
}
