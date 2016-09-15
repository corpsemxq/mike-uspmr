package factory


class ConfigFactory {

    def grailsApplication

    ConfigObject getHomePageConfig() {
        ConfigObject prop
        try {
            String filePath = grailsApplication.config.staticProp.homePropLocation.toString()
            prop = new ConfigSlurper("development").parse(new File(filePath)?.toURI()?.toURL())
        } catch (IOException ex) {
            ex.printStackTrace()
            if (!prop) {
                prop = new ConfigSlurper("development").parse(new File("/Users/xingqiangmao/workspace/mike-uspmr/grails-app/conf/homeConfig.groovy")?.toURI()?.toURL())
            }
        } finally {
            return prop
        }
    }
}
