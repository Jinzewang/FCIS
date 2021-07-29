package com.fcis.service;

import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

@Service
public interface FileExImportService {
    int importExcel(MultipartFile excelFile) throws IOException, InvalidFormatException;
    void exportExcel(List<ModelWorker> modelWorkers, OutputStream outputStream) throws IOException;
    List<ModelWorker> findAllModelWorkers();
}
