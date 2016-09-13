package mike.uspmr

import grails.transaction.Transactional

import javax.mail.Message
import javax.mail.PasswordAuthentication
import javax.mail.Session
import javax.mail.Transport
import javax.mail.internet.InternetAddress
import javax.mail.internet.MimeMessage

@Transactional
class JavaMailService {
    private static final String TEXT_HTML = 'text/html; charset=utf-8;'
    private static final String TEXT_PLAIN = 'text/plain; charset=utf-8;'
    static scope = "prototype"


    def sendEmail(Map mailConfig, Map mailContent) {
        try {
            log.info "Sending Email in  JavaMailSendService"
            Properties props = new Properties()
            String userName = mailConfig.remove("username")
            String passWord = mailConfig.remove("password")
            mailConfig.each { k, v ->
                props.put(k.toString(), v.toString())
            }
            props.put("mail.transport.protocol", "smtp");
            Session emailSession
            if (userName && passWord) {
                emailSession = Session.getInstance(props,
                        new javax.mail.Authenticator() {
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(userName, passWord);
                            }
                        });
            } else {
                emailSession = Session.getInstance(props)
            }
            Message message = new MimeMessage(emailSession)
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(mailContent.toAddress, false))
            message.setSender(new InternetAddress(mailContent.fromAddress, false))
            message.setFrom(new InternetAddress(mailContent.fromAddress, false))
            message.setReplyTo(new InternetAddress(mailContent.replyto, false))
            message.setSubject(mailContent.subject)
            message.setContent(mailContent.body, TEXT_HTML)
            log.info "Message is created , now sending email"
            Transport.send(message);
        }
        catch (Exception e) {
            log.error "Exception in JavaMailSendService.sendEmail while sending mail to :${mailContent?.toAddress}"
            log.error "Exception in JavaMailSendService.sendEmail while sending mail from :${mailContent?.fromAddress}"
            log.error "Exception in JavaMailSendService.sendEmail while sending mail subject :${mailContent?.subject}"
            log.error "Exception trace in JavaMailSendService.sendEmail", e

            return false

        }
        // Return true if no exception is caught
        return true

    }


    def sendTextEmail(Map mailConfig, Map mailContent) {
        try {
            log.info "Sending Email in  JavaMailSendService"
            Properties props = new Properties()
            String userName = mailConfig.remove("username")
            String passWord = mailConfig.remove("password")
            mailConfig.each { k, v ->
                props.put(k.toString(), v.toString())
            }
            props.put("mail.transport.protocol", "smtp");
            Session emailSession
            if (userName && passWord) {
                emailSession = Session.getInstance(props,
                        new javax.mail.Authenticator() {
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(userName, passWord);
                            }
                        });
            } else {
                emailSession = Session.getInstance(props)
            }
            Message message = new MimeMessage(emailSession)
            if (mailContent.toAddress instanceof String) {
                message.setRecipient(Message.RecipientType.TO, new InternetAddress(mailContent.toAddress, false))
            } else {
                List emailList = mailContent.toAddress
                InternetAddress[] address = new InternetAddress[emailList.size()]
                for (int i = 0; i < emailList.size(); i++) {
                    address[i] = new InternetAddress(emailList.get(i).toString())
                }
                message.setRecipients(Message.RecipientType.TO, address)
            }
            message.setSender(new InternetAddress(mailContent?.fromAddress, false))
            message.setFrom(new InternetAddress(mailContent?.fromAddress, false))
            message.setSubject(mailContent?.subject)
            message.setContent(mailContent?.body, TEXT_PLAIN)
            log.info "Message is created , now sending email"
            Transport.send(message);
        }
        catch (Exception e) {
            e.printStackTrace()

            log.error "Exception in JavaMailSendService.sendEmail while sending mail to :${mailContent?.toAddress}"
            log.error "Exception in JavaMailSendService.sendEmail while sending mail from :${mailContent?.fromAddress}"
            log.error "Exception in JavaMailSendService.sendEmail while sending mail subject :${mailContent?.subject}"
            log.error "Exception trace in JavaMailSendService.sendEmail", e

            return false

        }
        // Return true if no exception is caught
        return true

    }
}