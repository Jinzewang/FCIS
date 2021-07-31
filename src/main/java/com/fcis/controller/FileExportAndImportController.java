package com.fcis.controller;

import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import com.fcis.service.FileExImportService;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.List;


@Controller
public class FileExportAndImportController {

    @Autowired
    private FileExImportService fileExImportService;

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

    @RequestMapping("/exportExcel")
    @ResponseBody
    public void exportExcel(HttpServletResponse response) throws IOException {


        //��ȡ������ѧ��
        List<ModelWorker> allModelWorkers = fileExImportService.findAllModelWorkers();
        //�������ļ���������ӵ��ļ�����
        SimpleDateFormat date=new SimpleDateFormat("yyyy-MM-dd HH:mmss");
        String excelName=date+"�Ƚ�������Ϣ.xls";
//        logger.info(excelName);
        //��Ӧ ����Excel
        response.setHeader("Content-Disposition","attachment;filename="+excelName);
        response.setContentType("application/x-excel;charset=UTF-8");
        OutputStream excelOutStream=response.getOutputStream();
        if(allModelWorkers!=null){
            fileExImportService.exportExcel(allModelWorkers,excelOutStream);
        }
        excelOutStream.close();
//        return "";
    }
}
