package mike.uspmr

import domain.app.Application

class AdminController {

    AdminService adminService

    def index() {

        List<Application> appList = adminService.getApp(0,0)
        Integer page = 0
        try {
            page = new Integer(params.page)
        } catch (Exception ex) {
            log.info "${ex.message} page has to be sign to int default is 1"
            page = 1
        }

        if (!page || page < 1) {
            page = 1
        }
        render(view: '/user/applicationsManagePage', model: [test: "test" , appList :appList, pageNumber : page])


    }


    def applicationDetail() {
        String appOneUuid = params.uuidOne
        Application appOne = adminService.findByUUID(appOneUuid)
        render(view: '/user/applicationDetailPage', model: [test: "test" , appOne : appOne])

    }


}
