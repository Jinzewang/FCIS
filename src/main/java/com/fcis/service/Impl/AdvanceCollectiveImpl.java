package com.fcis.service.Impl;

import com.fcis.mapper.AdvancedCollectiveDao;
import com.fcis.model.informationManagement.advancedCollective.CollectiveInfo;
import com.fcis.service.AdvanceCollectiveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

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
}
