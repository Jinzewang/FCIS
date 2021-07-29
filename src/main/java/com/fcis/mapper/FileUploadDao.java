package com.fcis.mapper;

import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FileUploadDao {
    int importExcel(List<ModelWorker> modelWorkerList);

    List<ModelWorker> findAllModelWorkers();
}
