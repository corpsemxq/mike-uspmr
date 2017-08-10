import mike.uspmr.factory.ConfigFactory
import mike.uspmr.factory.DataBaseFactory

// Place your Spring DSL code here
beans = {
    configFactory(ConfigFactory) {
        grailsApplication = ref("grailsApplication")
    }
    homePageConfig(configFactory: "getHomePageConfig") {}
//    objectMapperFactory(ObjectMapperFactory)
//    objectMapper(objectMapperFactory: "getObjectMapper")
    dataBaseFactory(DataBaseFactory) {
        grailsApplication = ref("grailsApplication")
    }
    dataSource(dataBaseFactory : "getDataSource")
}
