class PropertiesUtil {

    def grailsApplication

    public Properties getHomePageProperties() {
        Properties prop = new Properties()
        InputStream input = null
        try {
            String filePath = grailsApplication.config.staticProp.homePropLocation.toString()
            input = new FileInputStream(filePath)
            // load a properties file
            prop.load(input)
            // get the property value and print it out
//            System.out.println(prop.getProperty("database"))
//            System.out.println(prop.getProperty("dbuser"))
//            System.out.println(prop.getProperty("dbpassword"))

        } catch (IOException ex) {
            ex.printStackTrace()
        } finally {
            if (input != null) {
                try {
                    input.close()
                } catch (IOException e) {
                    e.printStackTrace()
                }
            }
        }

    }
}
