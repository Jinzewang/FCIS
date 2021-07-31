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
    // �ж��Ƿ��߼�ɾ���ɹ�
    boolean deleteAdvance(Integer id);

    /**
     * ��������ѯ����
     * @param collectiveProvance ��������
     * @param companyName ����λ����
     * @param principalName ������������
     * @param principalPhone �������˵绰
     * @param currPage ��ǰҳ��
     * @param pageSize ҳ�ڼ�¼����
     * @return
     */
    List<CollectiveInfo> selectAdvanceCondition(String collectiveProvance, String companyName
            ,String principalName
            ,String principalPhone
            ,int currPage,int pageSize);

    /**
     * ͳ���Ƚ�����
     * @return
     */
    List<Integer> statisticsCollective();

    /**
     * ��id��ѯ�Ƚ�������ϸҳ��
     * @param id �Ƚ�����id
     * @return
     */
    CollectiveInfo selectCollectiveDetails(Integer id);
}
