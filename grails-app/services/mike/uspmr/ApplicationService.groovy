package mike.uspmr

import domain.VendorApplication
import grails.transaction.Transactional

@Transactional
class ApplicationService {

    def serviceMethod() {

    }


    VendorApplication mappingTheApplicationForm(Map applicationForm){
        VendorApplication vendorApplication = new VendorApplication()

        vendorApplication.vendorSercices = applicationForm?.vendorSercices as List

        vendorApplication.insuranceDetail.insuranceCompany = applicationForm?.insuranceDetail?.insuranceCompany
        vendorApplication.insuranceDetail.coverageArea = applicationForm?.insuranceDetail?.coverageArea as List

        if (applicationForm?.insuranceDetail?.expireDate_year && applicationForm?.insuranceDetail?.expireDate_month && applicationForm?.insuranceDetail?.expireDate_day) {
            try {
                vendorApplication.insuranceDetail.expireDate = new Date(Integer.parseInt(applicationForm.insuranceDetail.expireDate_year.toString()),
                        Integer.parseInt(applicationForm.insuranceDetail.expireDate_month.toString()),
                        Integer.parseInt(applicationForm.insuranceDetail.expireDate_day.toString()))
            } catch (Exception ex){
                log.info "Exception happened when parsing vendorApplication.insuranceDetail.expireDate, ${ex.stackTrace}"

            }
        }
        vendorApplication.businessInfo.businessName = applicationForm?.businessInfo?.businessName
        vendorApplication.businessInfo.contactPerson = applicationForm?.businessInfo?.contactPerson
        vendorApplication.businessInfo.businessPhone = applicationForm?.businessInfo?.businessPhone
        vendorApplication.businessInfo.contactEmail = applicationForm?.businessInfo?.contactEmail
        vendorApplication.businessInfo.businessAddress = applicationForm?.businessInfo?.businessAddress
        vendorApplication.businessInfo.businessCity = applicationForm?.businessInfo?.businessCity
        vendorApplication.businessInfo.businessState = applicationForm?.businessInfo?.businessState
        vendorApplication.businessInfo.businessZip = applicationForm?.businessInfo?.businessZip

        vendorApplication.reference1.companyName = applicationForm?.reference1?.companyName
        vendorApplication.reference1.name = applicationForm?.reference1?.name
        vendorApplication.reference1.phoneNumber = applicationForm?.reference1?.phoneNumber

        vendorApplication.reference2.companyName = applicationForm?.reference2?.companyName
        vendorApplication.reference2.name = applicationForm?.reference2?.name
        vendorApplication.reference2.phoneNumber = applicationForm?.reference2?.phoneNumber

        vendorApplication.reference3.companyName = applicationForm?.reference3?.companyName
        vendorApplication.reference3.name = applicationForm?.reference3?.name
        vendorApplication.reference3.phoneNumber = applicationForm?.reference3?.phoneNumber

        return vendorApplication

    }
}
