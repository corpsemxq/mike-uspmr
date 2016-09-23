package mike.uspmr

import mike.uspmr.factory.ConfigFactory
import org.springframework.beans.factory.annotation.Autowired

class PageController {

    ConfigFactory configFactory

    PageService pageService

    def index() {

    }

    def homePage() {
        def homeConfig =  grailsApplication.config
        println  homeConfig?.home?.aboutus
        println "123"
        render(view: '/pmrIndex', model: [test: "test", homeConfig : homeConfig ])
    }


    def applicationPage() {
        def homeConfig =  grailsApplication.config
        render(view: '/applicationForm', model: [test: "test" ,homeConfig : homeConfig])
    }

    def servicePage(String category) {
        def homeConfig =  grailsApplication.config
        if (category in homeConfig?.home?.service?.firstLevelCategory?.keySet()) {
            log.info "Choosing $category services."
            render(view: '/serviceDetail', model:
                    [test: "test", homeConfig : homeConfig, services : homeConfig.home.service.secondLevelCategory."${category.replace(" ","").toLowerCase()}", category : category])
        } else {
            render(view: '/pmrIndex', model: [test: "test", homeConfig : homeConfig])

        }

    }
}
