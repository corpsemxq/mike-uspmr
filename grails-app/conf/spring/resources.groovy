import factory.PropertiesFactory

// Place your Spring DSL code here
beans = {
    propertiesFactory(PropertiesFactory) {
        grailsApplication = ref("grailsApplication")
    }
    homeProp(propertiesFactory: "getHomePageProperties") {}
//    objectMapperFactory(ObjectMapperFactory)
//    objectMapper(objectMapperFactory: "getObjectMapper")
}
