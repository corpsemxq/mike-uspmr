package mike.uspmr

import grails.transaction.Transactional
import groovy.util.logging.Log4j2
import mike.uspmr.factory.ConfigFactory

@Transactional
class PageService {

    ConfigFactory configFactory

    def serviceMethod() {

    }

    ConfigObject getHomeConfig() {
        log.info "Getting home config"
        return configFactory.getHomePageConfig()
    }
}
