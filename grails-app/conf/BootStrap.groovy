import domain.app.AppType
import domain.app.Application
import domain.user.User
import org.mongodb.morphia.Datastore

class BootStrap {

    Datastore datastore



    def setupStaticData() {
        Application application = new Application()
        application.with {
            yrsOfExperience = 10
            appType = AppType.VENDOR
            applicant.with {
                firstName = "test"
                lastName = "test"
                email = "test${application.uuid}@gmail.com".toString()
                mobile = "2012012201"
            }
        }
        datastore.save(application)

        User user = new User()
        user.with {
            username = "uspmr"
            password = "admin"
        }
        user.encodePassword()
        datastore.save(user)

    }



    def init = { servletContext ->
        TimeZone.setDefault(TimeZone.getTimeZone("UTC"))
        environments {
            development {
                setupStaticData()
            }

            production {
                setupStaticData()
            }
        }
    }
    def destroy = {
    }
}
