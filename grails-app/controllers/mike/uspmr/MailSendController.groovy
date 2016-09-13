package mike.uspmr

class MailSendController {

//    static allowedMethods = [contactEmailSend: "POST"]

    static responseFormats = ['json', 'html']
    static namespace = 'v1'
    def beforeInterceptor = [action: this.&filter]
    MailSendService mailSendService


    private filter() {
        response.setHeader('Access-Control-Allow-Origin', '*')
        response.setHeader('Access-Control-Allow-Credentials', 'true')
        response.setHeader('Access-Control-Allow-Headers', 'origin, authorization, accept, content-type, x-requested-with')
        response.setHeader('Access-Control-Allow-Methods', 'GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS')
        response.setHeader('Access-Control-Max-Age', '3600')
    }


    def contactEmailSend () {
        println "sbnsdasasdsd"
        println params.name
        println params.email
        println params.message
        mailSendService.sendEmailFromContactUs(params.name, params.email, params.message)
        redirect(controller: "page", action: "homePage")
    }
}
