package com.fcis.service.Impl;

import com.fcis.mapper.AdvancedCollectiveDao;
import com.fcis.model.informationManagement.advancedCollective.CollectiveInfo;
import com.fcis.service.AdvanceCollectiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Component
public class AdvanceCollectiveImpl implements AdvanceCollectiveService {

    @Autowired
    private AdvancedCollectiveDao advancedCollectiveDao;
    @Override
    public void insertAdvanceCollective(CollectiveInfo collectiveInfo) {
        advancedCollectiveDao.insertAdvanceCollective(collectiveInfo);
    }

    @Override
    public List<CollectiveInfo> selectAdvance(String collectiveTitle, int currPage, int pageSize) {
        List<CollectiveInfo> collectiveInfos = advancedCollectiveDao.selectAdvanceCollective(collectiveTitle);
        int firstIndex = (currPage-1)*pageSize;
        int endIndex = currPage*pageSize;
        return collectiveInfos.subList(firstIndex,endIndex);
    }

    @Override
    public boolean deleteAdvance(Integer id) {
        advancedCollectiveDao.deleteAdvance(id);
        int success = advancedCollectiveDao.deleteSuccess(id);
        if (success == 1)
            return true;
        else
            return false;
    }

    @Override
    public List<CollectiveInfo> selectAdvanceCondition(String collectiveProvance, String companyName
            , String principalName, String principalPhone, int currPage, int pageSize) {
        List<CollectiveInfo> collectiveInfos = advancedCollectiveDao.selectAdvanceCondition(collectiveProvance, companyName, principalName, principalPhone);
        int firstIndex = (currPage-1)*pageSize;
        int endIndex = currPage*pageSize;
        return collectiveInfos.subList(firstIndex,endIndex);
    }

    @Override
    public List<Integer> statisticsCollective() {
        int nationalAdvance = advancedCollectiveDao.statisticsNationalAdvance().size();//ȫ���Ƚ�������λ��
        int sichuanAdvance = advancedCollectiveDao.statisticsProvenceAdvance().size();//�Ĵ�ʡ�Ƚ�������λ��
        int national51 = advancedCollectiveDao.statisticsNationalAdvance51().size();//ȫ��51�Ͷ���״��λ��
        int sichuan51 = advancedCollectiveDao.statisticsProvenceAdvance51().size();//�Ĵ���һ�Ͷ���״��λ��
        int nationalWorkers = advancedCollectiveDao.statisticsNationalWorkers().size();//ȫ�������ȷ��
        int sichuanWorkers = advancedCollectiveDao.statisticsProvenceWorkers().size();//�Ĵ�ʡ�����ȷ��
        int cityWorkers = advancedCollectiveDao.statisticsCityWorkers().size();//�й����ȷ��
        int companyWorkers = advancedCollectiveDao.statisticsCompanyWorkers().size();//��ҵ�ȷ��
        ArrayList<Integer> list = new ArrayList<>();
        list.add(0,nationalAdvance);
        list.add(1,sichuanAdvance);
        list.add(2,national51);
        list.add(3,sichuan51);
        list.add(4,nationalWorkers);
        list.add(5,sichuanWorkers);
        list.add(6,cityWorkers);
        list.add(7,companyWorkers);
        return list;
    }

}
