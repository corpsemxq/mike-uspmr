package mike.uspmr

import com.fasterxml.jackson.databind.ObjectMapper

class MailSendController {

//    static allowedMethods = [applicationSend: "POST"]

    static responseFormats = ['json', 'html']
    static namespace = 'v1'
    def beforeInterceptor = [action: this.&filter]
    MailSendService mailSendService
    ApplicationService applicationService
    FileGenerateService fileGenerateService


    private filter() {
        response.setHeader('Access-Control-Allow-Origin', '*')
        response.setHeader('Access-Control-Allow-Credentials', 'true')
        response.setHeader('Access-Control-Allow-Headers', 'origin, authorization, accept, content-type, x-requested-with')
        response.setHeader('Access-Control-Allow-Methods', 'GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS')
        response.setHeader('Access-Control-Max-Age', '3600')
    }


    def contactEmailSend() {
        log.info "Getting contact us email from uspmr.com"
        try {
            mailSendService.sendEmailFromContactUs(params.name, params.email, params.message)
            flash.message = "The contact email sent successfully! Going back to home page! " + "\n" +
                    "(If can not redirect in 10 seconds, please click 'Back to home page' on the right top)"
        } catch (Exception ex) {
            log.error "Contact Email sent failed, the error is ${ex.message}"
            flash.error = "Some internal error occured. Please contact with ${grailsApplication.config.mailSender.defaultValue.customerServiceEmail}"
        }
        redirect(controller: "page", action: "acknowledgePage")
    }

    def applicationSend() {
        log.info "Getting application from uspmr.com"
        def application = applicationService.mappingTheApplicationForm(params as Map)
        def file = fileGenerateService.generateExcelRecord(application)
        if (file) {
            Map mailConfig = [:]
            mailConfig.mailConfig = grailsApplication.config.mailSender.defaultValue.props
            mailConfig.toAddress = grailsApplication.config.mailSender.defaultValue.receviceMessageEmail
            mailConfig.fromAddress = grailsApplication.config.mailSender.defaultValue.customerServiceEmail
            mailConfig.replyTo = application.businessInfo.contactEmail
            mailConfig.file = file
            mailConfig.mailSubject = "Name : ${application.businessInfo.contactPerson}, Company : ${application.businessInfo.businessName}, ${new Date()}"
            mailConfig.mailText = "This is the application from Name:${application.businessInfo.contactPerson}, Business: ${application.businessInfo.businessName}, please check the attach file" +
                    "Email : ${application.businessInfo.contactEmail}, created at ${new Date()}"
            if (mailSendService.sendEmailFromApplication(mailConfig)) {
                flash.message = "The application sent successfully! Going back to home page! " + "\n" +
                        "(If can not redirect in 10 seconds, please click 'Back to home page' on the right top)"
            } else {
                log.error "Application Email sent failed, the error is ${ex.message}"
                flash.error = "Some internal email server error occured. Please try again later or contact with ${grailsApplication.config.mailSender.defaultValue.customerServiceEmail} to fill the applicatioin"

            }
        } else {
            flash.error = "Some internal error occured. Please contact with ${grailsApplication.config.mailSender.defaultValue.customerServiceEmail} to fill the applicatioin"
        }
        redirect(controller: "page", action: "acknowledgePage")
    }
}
