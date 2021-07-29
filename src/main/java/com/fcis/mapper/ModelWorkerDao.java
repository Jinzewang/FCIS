package com.fcis.mapper;

import com.fcis.model.informationManagement.outstandingPersonDeclare.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface ModelWorkerDao {
    // 保存先进个人信息到数据库中
    void insertTitleAndTreatment(@Param("title") String title, @Param("treatment") String treatment);
    void insertInfo(@Param("info") Info info);
    void insertAddInfo(AddInfo addInfo);
    void insertCertifed(CertifiedMaterials certifiedMaterials);
    void insertAddCertifed(AddCertifiedMaterials addCertifiedMaterials);

    // 删除劳模
    void deleteModelWorker(@Param("id") Integer id);
    // 查询劳模是否删除成功
    int successOrnot(@Param("id") Integer id);

    /**
     * 按条件查询劳模
     * @param modelWorkerTitle 按荣誉称号
     * @param modelWorkerTreatment 按劳模待遇
     * @param isCertified 按劳模状态 未上报0，已上报1，已认定2，取消称号3，已死亡4，已调动5
     * @param dieTime 按是否死亡查询
     * @return 返回
     */
    List<ModelWorker> selectModelWorkerCondition(@Param("modelWorkerTitle") String modelWorkerTitle
            , @Param("modelWorkerTreatment") String modelWorkerTreatment
            , @Param("isCertified") byte isCertified
            , @Param("dieTime") Date dieTime);

    /** 查询建国来劳模总数
     * 为排除劳模修改后再插入的数据，选择查询劳模的状态
     * @return
     */
    List<Integer> selectTotalModelWorker();

    /**
     * 查询已死亡的劳模数量
     * @return
     */
    List<Integer> selectDieModelWorker();

    /**
     * 查询退休劳模数
     * @return
     */
    List<Integer> selectRetireModel(@Param("stateofJob") String stateofJob);

    /**
     * 查询劳模所有信息
     * @param id 劳模id
     * @return
     */
    List<ModelWorker> modelWorkerDetails(Integer id);

    /**
     * 在Excel导出中导出劳模的所有信息
     * @return
     */
    List<ModelWorker> findAllModelWorkers();
}
