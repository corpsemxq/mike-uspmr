package mike.uspmr

import domain.VendorApplication
import grails.transaction.Transactional
import org.apache.poi.ss.usermodel.Cell
import org.apache.poi.ss.usermodel.Row
import org.apache.poi.ss.usermodel.Sheet
import org.apache.poi.ss.usermodel.Workbook
import org.apache.poi.xssf.usermodel.XSSFWorkbook

import java.text.SimpleDateFormat

@Transactional
class FileGenerateService {
    def grailsApplication

    SimpleDateFormat formatter = new SimpleDateFormat("yyyy_MM_dd'T'HH")

    def serviceMethod() {
    }

    def generateExcelRecord(VendorApplication application) {
        File file = new File(
                "${grailsApplication.config.applicationFileLocation}/${new Date().getYear()+1900}/${new Date().getMonth()+1}/${generatorApplicationRecordName(application)}")
        if (!file.getParentFile().exists()) {
            log.info "Dir of the file is not exsit. Will create one"
            if (!file.getParentFile().mkdirs()) {
                log.error "making dir error please check access"
                return null
            }
        }
        File localFile = file
        Workbook writeBook
        FileOutputStream os
        try {
            os = new FileOutputStream(localFile)
            writeBook = new XSSFWorkbook()
            Sheet mySheet = writeBook.createSheet("application")
            writeDataToXlsx(mySheet, "vendorSercices", "What services do you Perform", application)
            writeDataToXlsx(mySheet, "", "InsuranceDetail", application)
            writeDataToXlsx(mySheet, "insuranceDetail.insuranceCompany", "insuranceCompany", application)
            writeDataToXlsx(mySheet, "insuranceDetail.coverageArea", "coverageArea", application)
            writeDataToXlsx(mySheet, "insuranceDetail.expireDate", "expireDate", application)
            writeDataToXlsx(mySheet, "", "BusinessInfo", application)
            writeDataToXlsx(mySheet, "businessInfo.businessName", "businessName", application)
            writeDataToXlsx(mySheet, "businessInfo.contactPerson", "contactPerson", application)
            writeDataToXlsx(mySheet, "businessInfo.businessPhone", "businessPhone", application)
            writeDataToXlsx(mySheet, "businessInfo.contactEmail", "contactEmail", application)
            writeDataToXlsx(mySheet, "businessInfo.businessAddress", "businessAddress", application)
            writeDataToXlsx(mySheet, "businessInfo.businessCity", "businessCity", application)
            writeDataToXlsx(mySheet, "businessInfo.businessState", "businessState", application)
            writeDataToXlsx(mySheet, "businessInfo.businessZip", "businessZip", application)
            writeDataToXlsx(mySheet, "", "reference1", application)
            writeDataToXlsx(mySheet, "reference1.companyName", "companyName", application)
            writeDataToXlsx(mySheet, "reference1.name", "name", application)
            writeDataToXlsx(mySheet, "reference1.phoneNumber", "phoneNumber", application)
            writeDataToXlsx(mySheet, "", "reference2", application)
            writeDataToXlsx(mySheet, "reference2.companyName", "companyName", application)
            writeDataToXlsx(mySheet, "reference2.name", "name", application)
            writeDataToXlsx(mySheet, "reference2.phoneNumber", "phoneNumber", application)
            writeDataToXlsx(mySheet, "", "reference3", application)
            writeDataToXlsx(mySheet, "reference3.companyName", "companyName", application)
            writeDataToXlsx(mySheet, "reference3.name", "name", application)
            writeDataToXlsx(mySheet, "reference3.phoneNumber", "phoneNumber", application)
            writeBook.write(os)
            return file
        }catch (Exception ex) {
            log.error ex.message, ex.class
            return null
        } finally {
            os?.close()
            writeBook?.close()
        }
    }


    def writeDataToXlsx(Sheet sheet, String nameOfField, String displayNameOfField, VendorApplication vendorApplication){
        try {
            int rowNum = sheet.getLastRowNum() + 1
            List<Object> objArr = []
            objArr[0] = displayNameOfField
            def result = vendorApplication
            if (nameOfField.contains(".")) {
                String[] keys = nameOfField.split("\\.")
                keys?.each {
                    result = result?."$it"
                }
            } else if (!nameOfField){
                result = null
                rowNum += 1
                objArr[1] = "#############"
                objArr[2] = "#############"
                objArr[3] = "#############"
                objArr[4] = "#############"
            } else {
                result = result?."$nameOfField"
            }
            if (result) {
                objArr[1] = ":"
                if (result instanceof List) {
                    int indexOfCell = 2
                    for (def value in result) {
                        objArr[indexOfCell] = value
                        indexOfCell++
                    }
                } else {
                    objArr[2] = result
                }
            }
            Row writeRow = sheet.createRow(rowNum)
            writeToRow(objArr, writeRow)
            log.info "Finish the file generate."
            return true
        } catch (Exception ex) {
            log.info "Getting exception when write data xlsx. Message is :$ex.stackTrace"
            return false
        }
    }


    void writeToRow(List<Object> objArr, Row writeRow) {
        Integer cellnum = 0
        for (Object obj : objArr) {
            Cell writeCell = writeRow.createCell(cellnum++)
            if (obj instanceof String) {
                writeCell.setCellValue((String) obj)
            } else if (obj instanceof Boolean) {
                writeCell.setCellValue((Boolean) obj)
            } else if (obj instanceof Date) {
                writeCell.setCellValue(obj as Date)
            } else if (obj instanceof Double) {
                writeCell.setCellValue(obj.toString())
            } else {
                writeCell.setCellValue(obj)
            }
        }
    }

    String generatorApplicationRecordName(VendorApplication application) {
        return "${application.businessInfo.contactPerson}_${application.businessInfo.contactEmail}_${formatter.format(new Date())}.xlsx"
    }
}
