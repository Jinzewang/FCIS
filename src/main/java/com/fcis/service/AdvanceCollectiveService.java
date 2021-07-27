package com.fcis.service;

import com.fcis.model.informationManagement.advancedCollective.CollectiveInfo;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Component
public interface AdvanceCollectiveService {
    /**
     * �����Ƚ�������Ϣ
     * @param collectiveInfo �Ƚ�����
     */
    void insertAdvanceCollective(CollectiveInfo collectiveInfo);

    /**
     * ��������ѯ�Ƚ�����
     * @param collectiveTitle ����ƺ�
     * @param currPage ��ǰҳ��
     * @param pageSize ҳ���¼����
     * @return �������м���
     */
    List<CollectiveInfo> selectAdvance(String collectiveTitle,int currPage, int pageSize);

    boolean deleteAdvance(Integer id);
}
