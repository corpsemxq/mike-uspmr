package domain

class VendorApplication {

    static constraints = {
    }

    String applicationId = UUID.randomUUID().toString()

    List<String> vendorSercices = []

    def yrsOfExperience

    InsuranceDetail insuranceDetail = new InsuranceDetail()

    BusinessInfo businessInfo = new BusinessInfo()

    ReferencePerson reference1 = new ReferencePerson()

    ReferencePerson reference2 = new ReferencePerson()

    ReferencePerson reference3 = new ReferencePerson()

    ReferencePerson reference4 = new ReferencePerson()

    ReferencePerson reference5 = new ReferencePerson()
}
