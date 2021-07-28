package com.fcis.service;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
public interface FileEx_ImportService {
    int importExcel(MultipartFile excelFile) throws IOException, InvalidFormatException;
}
