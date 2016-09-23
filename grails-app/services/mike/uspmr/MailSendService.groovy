package mike.uspmr

import grails.transaction.Transactional

@Transactional
class MailSendService {

    def grailsApplication

    JavaMailService javaMailService

    def serviceMethod() {

    }


    def sendEmailFromContactUs(String name, String email, String message) {
        Map mailConfig = [:]
        grailsApplication.config.mailSender.defaultValue.props.each { k, v ->
            mailConfig."$k"="$v"
            log.info "Now Using Generic configs for email service"
        }
        def mailBody = [:]
        mailBody.subject = "This is the contact email from $name ($email) at ${new Date()}"
        mailBody.toAddress = grailsApplication.config.mailSender.defaultValue.customerServiceEmail
        mailBody.fromAddress = grailsApplication.config.mailSender.defaultValue.customerServiceEmail
        mailConfig["mail.smtp.from"] = grailsApplication.config.mailSender.defaultValue.customerServiceEmail
        mailBody.body = message
        javaMailService.sendTextEmail(mailConfig, mailBody)

    }
}
