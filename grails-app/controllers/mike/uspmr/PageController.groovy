package mike.uspmr

class PageController {

    ConfigObject homeConfig
    def index() {

    }

    def homePage() {

        Map services = [:]
        services.'Winterization' = 'Here is info of Winterization'
        services.'Lock ups' = 'Here is info of Lock ups'
        services.'Trash outs' = 'Here is info of Trash outs'
        services.'Trash outs1' = 'Here is info of Trash outsHere is info of Trash outsHere is info of Trash outsHere is info of Trash outs'
        services.'Trash outs2' = 'Here is info of Trash outs        services.\'Lock ups\' = \'Here is info of Lock ups\''
        services.'Trash outs3' = 'Here is info of Trash outs        services.\'Lock ups\' = \'Here is info of Lock ups\''
        services.'Trash outs4' = 'Here is info of Trash outs        services.\'Lock ups\' = \'Here is info of Lock ups\''
        services.'Trash outs5' = 'Here is info of Trash outs        services.\'Lock ups\' = \'Here is info of Lock ups\''
        services.'Trash outs6' = 'Here is info of Trash outs        services.\'Lock ups\' = \'Here is info of Lock ups\''
        services.'Trash outs7' = 'Here is info of Trash outs        services.\'Lock ups\' = \'Here is info of Lock ups\''
        services.'Trash outs8' = 'Here is info of Trash outs        services.\'Lock ups\' = \'Here is info of Lock ups\''

        println  homeConfig?.home?.aboutus
        println "123"
        render(view: '/pmrIndex', model: [test: "test", services : services, homeConfig : homeConfig])
    }


    def applicationPage() {
        render(view: '/applicationForm', model: [test: "test"])
    }
}
