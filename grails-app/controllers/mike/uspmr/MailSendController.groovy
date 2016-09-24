package mike.uspmr

import com.fasterxml.jackson.databind.ObjectMapper

class MailSendController {

//    static allowedMethods = [applicationSend: "POST"]

    static responseFormats = ['json', 'html']
    static namespace = 'v1'
    def beforeInterceptor = [action: this.&filter]
    MailSendService mailSendService
    ObjectMapper objectMapper = new ObjectMapper()
    ApplicationService applicationService
    FileGenerateService fileGenerateService


    private filter() {
        response.setHeader('Access-Control-Allow-Origin', '*')
        response.setHeader('Access-Control-Allow-Credentials', 'true')
        response.setHeader('Access-Control-Allow-Headers', 'origin, authorization, accept, content-type, x-requested-with')
        response.setHeader('Access-Control-Allow-Methods', 'GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS')
        response.setHeader('Access-Control-Max-Age', '3600')
    }


    def contactEmailSend () {
        mailSendService.sendEmailFromContactUs(params.name, params.email, params.message)
        flash.message = "Submit successfully!"
        Thread.sleep(1000)
        redirect(controller: "page", action: "homePage")
    }

    def applicationSend(){
        Boolean emailSendFlag = false
        def application = applicationService.mappingTheApplicationForm(params as Map)
        def file = fileGenerateService.generateExcelRecord(application)
        if (file) {
            flash.message = "Submit successfully!"
            Map mailConfig = [:]
            mailConfig.mailConfig = grailsApplication.config.mailSender.defaultValue.props
            mailConfig.toAddress = grailsApplication.config.mailSender.defaultValue.customerServiceEmail
            mailConfig.fromAddress = grailsApplication.config.mailSender.defaultValue.customerServiceEmail
            mailConfig.replyto = application.businessInfo.contactEmail
            mailConfig.file = file
            mailConfig.mailSubject = "${application.businessInfo.contactPerson}, ${application.businessInfo.businessName}, ${application.businessInfo.contactEmail}, ${new Date()}"
            mailConfig.mailText = "This is the application from Name:${application.businessInfo.contactPerson}, Business: ${application.businessInfo.businessName}, please check the attach file"
            mailSendService.sendEmailFromApplication(mailConfig)
        } else {
            flash.message = "Submit failed"
        }
        redirect(controller: "page", action: "homePage")
    }
}
