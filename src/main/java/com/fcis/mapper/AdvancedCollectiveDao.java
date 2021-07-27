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
     * ɾ���Ƚ�����
     * @param id �����id
     */
    void deleteAdvance(@Param("id") Integer id);
    // �ж�ɾ���Ƿ�ɹ�
    int deleteSuccess(Integer id);
}
