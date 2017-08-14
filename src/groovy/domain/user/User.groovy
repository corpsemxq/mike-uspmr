package domain.user

import com.fasterxml.jackson.databind.annotation.JsonSerialize
import mike.uspmr.util.ObjectIdJsonSerializer
import org.bson.types.ObjectId
import org.mongodb.morphia.annotations.Entity
import org.mongodb.morphia.annotations.Id
import org.mongodb.morphia.annotations.Index
import org.mongodb.morphia.annotations.Indexes
import org.mongodb.morphia.annotations.Transient
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder

import javax.validation.constraints.NotNull

@Entity(value = "user", noClassnameStored = true)
@Indexes([@Index(value = "username", unique = true),@Index("type")])
class User {

    static BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(10)

    enum UserType {
        ADMIN
    }
    @JsonSerialize(using = ObjectIdJsonSerializer)
    @Id
    ObjectId id

    @NotNull
    String username

    @NotNull
    @Transient
    String password

    @NotNull
    String encodedPassword


    UserType type

    Date dateCreated = new Date()

    Date dateUpdated = new Date()


    void encodePassword(){
        this.encodedPassword = passwordEncoder.encode(this.password.toString())
    }
    String encodePassword(String password){
        return passwordEncoder.encode(password)
    }
}
