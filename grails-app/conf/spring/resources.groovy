import mike.uspmr.factory.ConfigFactory
import mike.uspmr.factory.MongoFactory

// Place your Spring DSL code here
beans = {
    mongoFactory(MongoFactory) {
        grailsApplication = ref("grailsApplication")
    }
    datastore(mongoFactory : "getDatastore") {}
    configFactory(ConfigFactory) {
        grailsApplication = ref("grailsApplication")
    }
    homePageConfig(configFactory: "getHomePageConfig") {}
//    objectMapperFactory(ObjectMapperFactory)
//    objectMapper(objectMapperFactory: "getObjectMapper")

}
