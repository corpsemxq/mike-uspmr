package mike.uspmr

import domain.app.Application
import grails.transaction.Transactional
import org.mongodb.morphia.Datastore

@Transactional
class AdminService {


    Datastore datastore

    def serviceMethod() {

    }


    List<Application> getApp(Integer page, Integer limit){
        return datastore.createQuery(Application).asList()
    }


    Application findByUUID(String uuid){
        return datastore.createQuery(Application).field("uuid").equal(uuid).get()
    }
}
