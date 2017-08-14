package mike.uspmr

import domain.user.User
import grails.transaction.Transactional
import org.mongodb.morphia.Datastore
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder

@Transactional
class UserService {

    static BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(10)


    Datastore datastore
    def serviceMethod() {

    }

    User findUserByUsername (String useName) {
        return datastore?.createQuery(User)?.field("username")?.equal(useName)?.get() ?: null
    }

    Boolean matchPasscode(String existingPassword, String dbPassword) {
        return passwordEncoder.matches(existingPassword, dbPassword)
    }

}
