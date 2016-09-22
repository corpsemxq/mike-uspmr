package domain

class VendorApplication {

    static constraints = {
    }

    String applicationId = UUID.randomUUID().toString()

    List<String> vendorSercices = []

    Integer yrsOfExperience

    InsuranceDetail insuranceDetail

    BusinessInfo businessInfo

    ReferencePerson reference1

    ReferencePerson reference2

    ReferencePerson reference3

    ReferencePerson reference4

    ReferencePerson reference5
}
