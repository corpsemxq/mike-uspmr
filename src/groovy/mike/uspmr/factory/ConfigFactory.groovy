package mike.uspmr.factory


class ConfigFactory {

    def grailsApplication

    ConfigObject getHomePageConfig() {
        ConfigObject prop
        try {
            String filePath = grailsApplication.config.staticProp.homePropLocation.toString()
            if (new File(filePath).exists()) {
                prop = new ConfigSlurper("development").parse(new File(filePath)?.toURI()?.toURL())
            } else {
                prop = grailsApplication.config
            }
        } catch (IOException ex) {
            ex.printStackTrace()
        } finally {
            return prop
        }
    }
}
