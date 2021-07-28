package com.fcis.service.Impl;

import com.fcis.mapper.FileUploadDao;
import com.fcis.model.informationManagement.outstandingPersonDeclare.AddInfo;
import com.fcis.model.informationManagement.outstandingPersonDeclare.CertifiedMaterials;
import com.fcis.model.informationManagement.outstandingPersonDeclare.Info;
import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import com.fcis.service.FileEx_ImportService;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Service
public class FileEx_ImportImpl implements FileEx_ImportService {

    @Autowired
    private FileUploadDao fileUploadDao;
    @Override
    public int importExcel(MultipartFile excelFile) throws IOException, InvalidFormatException {
        List<ModelWorker> modelWorkerList=new ArrayList<ModelWorker>();
        InputStream excelStream=excelFile.getInputStream();
        //获取工作簿
        Workbook workbook= WorkbookFactory.create(excelStream);
//        logger.info("****sheetName:"+workbook.getSheetName(0));
        //获取工作表
        Sheet sheet=workbook.getSheetAt(0);
        //获取Excel总行
        int rowNum=sheet.getLastRowNum();
//        logger.info("****rowNum:"+rowNum);
        //从内容开始
        if(rowNum>2){

            for (int i=2;i<rowNum;i++){

                Row row = sheet.getRow(i);
                ModelWorker modelWorker = new ModelWorker();
                Info info = new Info();
                AddInfo addInfo = new AddInfo();
                CertifiedMaterials certifiedMaterials = new CertifiedMaterials();
                setModelWorkerProperty(row,modelWorker,info,addInfo,certifiedMaterials);
                modelWorkerList.add(modelWorker);
//                fileUploadDao.exportModelWorker()
            }
        }
//        logger.info("****ModelWorkerList:"+modelWorkerList);
        int i = fileUploadDao.importExcel(modelWorkerList);
//        logger.info("***returnNum:"+i);
        if(i==rowNum-2){
            return 1;
        }
        return 0;
    }

    private void setModelWorkerProperty(org.apache.poi.ss.usermodel.Row row, ModelWorker modelWorker
            ,Info info, AddInfo addInfo, CertifiedMaterials certifiedMaterials) {
        modelWorker.setId((int) row.getCell(0).getNumericCellValue());
        modelWorker.setModelWorkerTitle(row.getCell(1).getStringCellValue());
        modelWorker.setModelWorkerTreatment(row.getCell(2).getStringCellValue());

        info.setModelName(row.getCell(3).getStringCellValue());
        info.setSex(row.getCell(4).getStringCellValue());
        info.setNationality(row.getCell(5).getStringCellValue());
        info.setBorn(row.getCell(6).getDateCellValue());
        info.setEducation(row.getCell(7).getStringCellValue());
        info.setProvence(row.getCell(8).getStringCellValue());
        info.setPoliticalState(row.getCell(9).getStringCellValue());
        info.setOrganization(row.getCell(10).getStringCellValue());
        info.setJobTitle(row.getCell(11).getStringCellValue());
        info.setGetModelWorkerTitleTime(row.getCell(12).getDateCellValue());
        info.setAwardingUnit(row.getCell(13).getStringCellValue());
        info.setID(row.getCell(14).getStringCellValue());
        info.setPhone(row.getCell(15).getStringCellValue());

        addInfo.setStateofHealth(row.getCell(16).getStringCellValue());
        addInfo.setStateofFamily(row.getCell(17).getStringCellValue());
        addInfo.setStateofJob(row.getCell(18).getStringCellValue());
        addInfo.setOutstandingDeeds(row.getCell(19).getStringCellValue());
        addInfo.setModelWorkerTitle((byte) row.getCell(20).getNumericCellValue());

        certifiedMaterials.setAwardingUnit(row.getCell(21).getStringCellValue());
        certifiedMaterials.setAwardingTime(row.getCell(22).getDateCellValue());
        certifiedMaterials.setRecognitionFileName(row.getCell(23).getStringCellValue());
        certifiedMaterials.setSymbol(row.getCell(24).getColumnIndex());
        certifiedMaterials.setRecognitionUnit(row.getCell(25).getStringCellValue());
        certifiedMaterials.setRecognitionTime(row.getCell(26).getDateCellValue());

        modelWorker.setDieTime(row.getCell(27).getDateCellValue());
        modelWorker.setTransferDes(row.getCell(28).getStringCellValue());
        modelWorker.setReviewModelWorker(row.getCell(29).getStringCellValue());
        modelWorker.setReasonforCancel(row.getCell(30).getStringCellValue());
        modelWorker.setIsCertified((byte) row.getCell(31).getNumericCellValue());
    }
}
