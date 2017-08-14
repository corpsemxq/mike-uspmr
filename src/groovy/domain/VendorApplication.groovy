package domain

import org.mongodb.morphia.annotations.Entity
import org.mongodb.morphia.annotations.Id



class VendorApplication {

    String applicationId = UUID.randomUUID().toString()

    List<String> vendorServices = []

    def yrsOfExperience

    InsuranceDetail insuranceDetail = new InsuranceDetail()

    BusinessInfo businessInfo = new BusinessInfo()

    ReferencePerson reference1 = new ReferencePerson()

    ReferencePerson reference2 = new ReferencePerson()

    ReferencePerson reference3 = new ReferencePerson()

    ReferencePerson reference4 = new ReferencePerson()

    ReferencePerson reference5 = new ReferencePerson()
}
