package domain.app

import com.fasterxml.jackson.databind.annotation.JsonSerialize
import mike.uspmr.util.ObjectIdJsonSerializer
import org.bson.types.ObjectId
import org.mongodb.morphia.annotations.Entity
import org.mongodb.morphia.annotations.Id
import org.mongodb.morphia.annotations.Index
import org.mongodb.morphia.annotations.Indexes

import javax.validation.constraints.NotNull

@Entity(value = "application", noClassnameStored = true)
@Indexes([@Index(value = "uuid", unique = true), @Index(value = "applicant.email", unique = true)])
class Application {

    @JsonSerialize(using = ObjectIdJsonSerializer)
    @Id
    ObjectId id

    @NotNull
    String uuid = UUID.randomUUID().toString()

    @NotNull
    AppType appType

    Integer yrsOfExperience

    @NotNull
    ContactPerson applicant = new ContactPerson()

    BusinessInfo businessInfo = new BusinessInfo()

    InsuranceDetail  insuranceDetail = new InsuranceDetail()

    List<ContactPerson> references = []

    Boolean active = true

    Date dateCreated = new Date()

    Date dateUpdated = new Date()

}
