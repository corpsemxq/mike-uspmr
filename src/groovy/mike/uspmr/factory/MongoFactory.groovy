package mike.uspmr.factory

import com.mongodb.*
import domain.app.Application
import domain.user.User
import mike.uspmr.util.MongoBigDecimalConvertor
import org.mongodb.morphia.Datastore
import org.mongodb.morphia.Morphia


class MongoFactory {

    def grailsApplication


    Datastore getDatastore() {

        try{



        def serverAddresses = []
        grailsApplication.config.mongo.uspmr.hosts.each { key, value ->
            log.info "Added MongoDB host $key:$value."
            serverAddresses << new ServerAddress(key, value)
        }
        String user = grailsApplication.config.mongo.uspmr.username.toString()
        String authDb = grailsApplication.config.mongo.uspmr.authdb.toString()
        def pass = grailsApplication.config.mongo.uspmr.password.toString().toCharArray()
        MongoCredential mongoCredential = MongoCredential.createCredential(user, authDb, pass)
        MongoClientOptions.Builder mongoClientOptionsBuilder = MongoClientOptions.builder()
                .connectionsPerHost((grailsApplication.config.mongo.uspmr.maximumConnectionCount as Integer))
                .minConnectionsPerHost((grailsApplication.config.mongo.uspmr.minimumConnectionCount as Integer))
                .maxConnectionIdleTime((grailsApplication.config.mongo.uspmr.maximumIdleTimeoutInSeconds as Integer) * 1000)
        //            if (grailsApplication.config.mongo.uspmr.sslEnabled) {
        //                println "Ssl is enabled"
        //                 mongoClientOptionsBuilder = mongoClientOptionsBuilder.sslEnabled(true)
        //            }
        //            else{
        //                mongoClientOptionsBuilder = mongoClientOptionsBuilder.sslEnabled(false)
        //
        //            }
        def mongoClientOptions = mongoClientOptionsBuilder.build()
        Mongo mongo=new MongoClient(serverAddresses,[mongoCredential],mongoClientOptions)
        //         Mongo mongo = new MongoClient(serverAddresses)
        Morphia morphia = new Morphia()
        String dbName = "${grailsApplication.config.mongo.uspmr.db}"
        log.info "Mongo Db name: $dbName"
        Datastore datastore = morphia.createDatastore(mongo, dbName)
        morphia.mapPackage("domain")
        morphia.getMapper().getConverters().addConverter(MongoBigDecimalConvertor.class)
        // for unique index
        morphia.map(Application.class)
        morphia.map(User.class)
        datastore.ensureIndexes()
        return datastore
        } catch (Exception ex) {
            ex.printStackTrace()
        }
    }
}
