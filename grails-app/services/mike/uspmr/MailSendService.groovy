package mike.uspmr

import grails.transaction.Transactional

import java.text.SimpleDateFormat

@Transactional
class MailSendService {

    def grailsApplication

    JavaMailService javaMailService

    def serviceMethod() {

    }


    def sendEmailFromContactUs(String name, String email, String message) {
        try {
            Map mailConfig = [:]
            grailsApplication.config.mailSender.defaultValue.props.each { k, v ->
                mailConfig."$k" = "$v"
                log.info "Now Using Generic configs for email service"
            }
            def mailBody = [:]
            mailBody.subject = "This is the contact email from $name ($email) at ${new Date()}"
            mailBody.toAddress = grailsApplication.config.mailSender.defaultValue.receviceMessageEmail
            mailBody.fromAddress = grailsApplication.config.mailSender.defaultValue.customerServiceEmail
            mailBody.replyTo = email
            mailConfig["mail.smtp.from"] = grailsApplication.config.mailSender.defaultValue.customerServiceEmail
            mailBody.body = message
            javaMailService.sendTextEmail(mailConfig, mailBody)
        } catch (Exception ex) {
            throw new RuntimeException("The email didn't send successfully. $ex.stackTrace")
        }

    }


    def sendEmailFromApplication(Map params) {
        log.info "sendEmailFromApplication"
        Map mailContent = [:]
        try {
            mailContent.toAddress = params.toAddress
            mailContent.fromAddress = params.fromAddress
            mailContent.replyTo = params.replyTo
            if (!params?.mailSubject) {
                mailContent.subject = "The application is submit at ${new Date()}"
            } else {
                mailContent.subject = params.mailSubject
            }
            SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss")
            mailContent.body = params.mailText
            mailContent.file = params.file
            javaMailService.sendExcelNoticeEmail(params.mailConfig, mailContent)
            return true
        } catch (Exception ex) {
            log.error "Getting ${ex.stackTrace} when report the file using email"
            return false
        }
    }
}
