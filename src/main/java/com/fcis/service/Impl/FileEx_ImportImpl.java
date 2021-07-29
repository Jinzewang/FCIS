package com.fcis.service.Impl;

import com.fcis.mapper.FileUploadDao;
import com.fcis.mapper.ModelWorkerDao;
import com.fcis.model.informationManagement.outstandingPersonDeclare.AddInfo;
import com.fcis.model.informationManagement.outstandingPersonDeclare.CertifiedMaterials;
import com.fcis.model.informationManagement.outstandingPersonDeclare.Info;
import com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker;
import com.fcis.service.FileExImportService;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class FileEx_ImportImpl implements FileExImportService {

    @Autowired
    private FileUploadDao fileUploadDao;
    @Autowired
    private ModelWorkerDao modelWorkerDao;
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

    @Override
    public void exportExcel(List<ModelWorker> allModelWorkers, OutputStream outputStream) throws IOException {
        HSSFWorkbook workbook=new HSSFWorkbook();
        //合并单元格
        CellRangeAddress cellRangeAddress=new CellRangeAddress(0,0,0,6);
        //创建表
        HSSFSheet sheet=workbook.createSheet("先进个人信息");
        HSSFRow nameRow=sheet.createRow(0);
        nameRow.createCell(0).setCellValue("先进个人信息表");
        //第一行设置为标题
        sheet.addMergedRegion(cellRangeAddress);
        //第二行设置字段名
        HSSFRow titleRow=sheet.createRow(1);
        String[] fieldName={"先进个人id","所获称号","所得待遇"
                ,"姓名","性别","民族","出生年月","教育程度","所属省份","政治面貌","工作单位","职务","获得称号时间","授予称号单位","身份证号","联系电话"
                ,"健康状况","家庭情况","就业情况","主要突出事迹","是否已获得称号"
                ,"授予荣誉证书单位","授予荣誉证书时间","表彰决定文件名","文件的文号","发文时间"
                ,"死亡时间","调动去向","审核批语","取消称号原因","先进个人状态"};
        for(int i=0;i<fieldName.length;i++){
            titleRow.createCell(i).setCellValue(fieldName[i]);
        }
        int studentNum=allModelWorkers.size();
        for(int i=0;i<studentNum;i++){
            ModelWorker modelWorker = allModelWorkers.get(i);
            HSSFRow row=sheet.createRow(i+2);
            Info info = new Info();
            AddInfo addInfo = new AddInfo();
            CertifiedMaterials certifiedMaterials = new CertifiedMaterials();
            getModelWorkerProperty(modelWorker,row,info,addInfo,certifiedMaterials);
        }
        //响应给前台
        workbook.write(outputStream);
    }
    private void getModelWorkerProperty(ModelWorker modelWorker, HSSFRow row, Info info, AddInfo addInfo, CertifiedMaterials certifiedMaterials) {
        row.createCell(0).setCellValue(modelWorker.getId());
        row.createCell(1).setCellValue(modelWorker.getModelWorkerTitle());
        row.createCell(2).setCellValue(modelWorker.getModelWorkerTreatment());

        row.createCell(3).setCellValue(info.getModelName());
        row.createCell(4).setCellValue(info.getSex());
        row.createCell(5).setCellValue(info.getNationality());
        row.createCell(6).setCellValue(new SimpleDateFormat("yyyy-mm-dd").format(info.getBorn()));
        row.createCell(7).setCellValue(info.getEducation());
        row.createCell(8).setCellValue(info.getProvence());
        row.createCell(9).setCellValue(info.getPoliticalState());
        row.createCell(10).setCellValue(info.getOrganization());
        row.createCell(11).setCellValue(info.getJobTitle());
        row.createCell(12).setCellValue(new SimpleDateFormat("yyyy-mm-dd").format(info.getGetModelWorkerTitleTime()));
        row.createCell(13).setCellValue(info.getAwardingUnit());
        row.createCell(14).setCellValue(info.getID());
        row.createCell(15).setCellValue(info.getPhone());

        row.createCell(16).setCellValue(addInfo.getStateofHealth());
        row.createCell(17).setCellValue(addInfo.getStateofFamily());
        row.createCell(18).setCellValue(addInfo.getStateofJob());
        row.createCell(19).setCellValue(addInfo.getOutstandingDeeds());
        row.createCell(20).setCellValue(addInfo.getModelWorkerTitle());

        row.createCell(21).setCellValue(certifiedMaterials.getAwardingUnit());
        row.createCell(22).setCellValue(new SimpleDateFormat("yyyy-MM-dd").format(certifiedMaterials.getAwardingTime()));
        row.createCell(23).setCellValue(certifiedMaterials.getRecognitionFileName());
        row.createCell(24).setCellValue(certifiedMaterials.getSymbol());
        row.createCell(25).setCellValue(certifiedMaterials.getRecognitionUnit());
        row.createCell(26).setCellValue(new SimpleDateFormat("yyyy-MM-dd").format(certifiedMaterials.getRecognitionTime()));

        row.createCell(27).setCellValue(modelWorker.getDieTime());
        row.createCell(28).setCellValue(modelWorker.getTransferDes());
        row.createCell(29).setCellValue(modelWorker.getReviewModelWorker());
        row.createCell(30).setCellValue(modelWorker.getReasonforCancel());
        row.createCell(31).setCellValue(modelWorker.getIsCertified());
    }
    @Override
    public List<ModelWorker> findAllModelWorkers() {
        List<ModelWorker> allModelWorkers = modelWorkerDao.findAllModelWorkers();
        return allModelWorkers;
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
