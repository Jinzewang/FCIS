package com.fcis.controller;

import com.fcis.service.FileEx_ImportService;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;


@Controller
public class FileExportAndImportController {

    @Qualifier("fileEx_ImportService")
    @Autowired
    private FileEx_ImportService fileExImportService;

    @RequestMapping("/importFile")
    @ResponseBody
    public String importExcel(@RequestParam("excelFile") MultipartFile excelFile){

        if(excelFile!=null){

            if(!excelFile.getOriginalFilename().matches("^.+\\.(?i)((xls)|(xlsx))$")){

                return "���ϴ���׺��Ϊxls��xlsx��Excel�ļ�!";
            }
            try {

                if(fileExImportService.importExcel(excelFile)==1){

                    return "excel�ϴ��ɹ�!";
                }else {

                    return "excel�ϴ�ʧ��";
                }

            } catch (InvalidFormatException e) {
                e.printStackTrace();
                return "excel�ϴ�ʧ��";
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "excel�ϴ�ʧ��";
    }
}
