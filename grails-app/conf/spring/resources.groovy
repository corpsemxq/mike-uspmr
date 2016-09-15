import factory.ConfigFactory

// Place your Spring DSL code here
beans = {
    configFactory(ConfigFactory) {
        grailsApplication = ref("grailsApplication")
    }
    homeConfig(configFactory: "getHomePageConfig") {}
//    objectMapperFactory(ObjectMapperFactory)
//    objectMapper(objectMapperFactory: "getObjectMapper")
}
