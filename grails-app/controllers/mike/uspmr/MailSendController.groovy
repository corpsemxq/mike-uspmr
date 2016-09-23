package mike.uspmr

import com.fasterxml.jackson.databind.ObjectMapper
import domain.VendorApplication

class MailSendController {

//    static allowedMethods = [applicationSend: "POST"]

    static responseFormats = ['json', 'html']
    static namespace = 'v1'
    def beforeInterceptor = [action: this.&filter]
    MailSendService mailSendService
    ObjectMapper objectMapper = new ObjectMapper()


    private filter() {
        response.setHeader('Access-Control-Allow-Origin', '*')
        response.setHeader('Access-Control-Allow-Credentials', 'true')
        response.setHeader('Access-Control-Allow-Headers', 'origin, authorization, accept, content-type, x-requested-with')
        response.setHeader('Access-Control-Allow-Methods', 'GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS')
        response.setHeader('Access-Control-Max-Age', '3600')
    }


    def contactEmailSend () {
        mailSendService.sendEmailFromContactUs(params.name, params.email, params.message)
        redirect(controller: "page", action: "homePage")
    }

    def applicationSend(){
            println "sb"
        def application = new VendorApplication(params)
        objectMapper.readValue
        println application.getClass()
        println application
        redirect(controller: "page", action: "homePage")

    }
}
