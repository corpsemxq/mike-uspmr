import mike.uspmr.factory.ConfigFactory

// Place your Spring DSL code here
beans = {
    configFactory(ConfigFactory) {
        grailsApplication = ref("grailsApplication")
    }
    homePageConfig(configFactory: "getHomePageConfig") {}
//    objectMapperFactory(ObjectMapperFactory)
//    objectMapper(objectMapperFactory: "getObjectMapper")
}
