package mike.uspmr

import domain.app.Application

class AdminController {

    AdminService adminService

    def index() {

        List<Application> appList = adminService.getApp(0,0)
        println "Getting data form db"
        Integer page = 0
        try {
            page = new Integer(params.page)
        } catch (Exception ex) {
            log.error "${ex.message} page has to be sign to int default is 1"
            page = 1
        }

        if (!page || page < 1) {
            page = 1
        }
        render(view: '/user/applicationsManagePage', model: [test: "test" , appList :appList, pageNumber : page])


    }


}
