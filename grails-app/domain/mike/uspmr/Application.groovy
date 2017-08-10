package mike.uspmr

import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table


@Entity
@Table(name = "application")
class Application {

    static constraints = {
    }

    @Id
    String appId = UUID.randomUUID().toString()

    String firstName

    String lastName

    Date dateCreated = new Date()

    Date dateUpdated = new Date()
}
