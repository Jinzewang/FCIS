package com.fcis.mapper;

import com.fcis.model.informationManagement.advancedCollective.CollectiveInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdvancedCollectiveDao {
    /**
     * �����Ƚ�������Ϣ
     * @param collectiveInfo �Ƚ��������
     */
    void insertAdvanceCollective(CollectiveInfo collectiveInfo);

    /**
     * ���ƺŲ�ѯ�Ƚ�����
     * @param collectiveTitle ��������ƺ�
     * @return ���ؼ���һ������ҳչʾ
     */
    List<CollectiveInfo> selectAdvanceCollective(@Param("collectiveTitle") String collectiveTitle);


    /**
     * ��������ѯ�Ƚ�����
     * @param collectiveProvance ��������
     * @param companyName ����λ����
     * @param principalName ������������
     * @param principalPhone ����������ϵ�绰
     * @return
     */
    List<CollectiveInfo> selectAdvanceCondition(@Param("collectiveProvance") String collectiveProvance
            ,@Param("companyName") String companyName
            ,@Param("principalName") String principalName
            ,@Param("principalPhone") String principalPhone);
    /**
     * ɾ���Ƚ�����
     * @param id �����id
     */
    void deleteAdvance(@Param("id") Integer id);
    // �ж�ɾ���Ƿ�ɹ�
    int deleteSuccess(Integer id);

    // ��ѯ�Ƚ�������ϸ��Ϣ
    CollectiveInfo selectCollectiveDetails(Integer id);
    /**
     * ��ѯ ȫ���Ƚ�������λ��
     * @return
     */
    List<Integer> statisticsNationalAdvance();

    /**
     * ��ѯ ʡ�Ƚ�������λ��
     * @return
     */
    List<Integer> statisticsProvenceAdvance();

    /**
     * ��ѯ ȫ����һ�Ͷ���״��λ��
     * @return
     */
    List<Integer> statisticsNationalAdvance51();

    /**
     * ��ѯ �Ĵ�ʡ��һ�Ͷ���״��λ��
     * @return
     */
    List<Integer> statisticsProvenceAdvance51();

    /**
     * ��ѯ ȫ�������ȷ�� ��
     * @return
     */
    List<Integer> statisticsNationalWorkers();

    /**
     * ��ѯ �Ĵ�ʡ�����ȷ�� ��
     * @return
     */
    List<Integer> statisticsProvenceWorkers();

    /**
     * ��ѯ �й����ȷ�� ��
     * @return
     */
    List<Integer> statisticsCityWorkers();

    /**
     * ��ѯ ��ҵ�����ȷ�� ��
     * @return
     */
    List<Integer> statisticsCompanyWorkers();
}
