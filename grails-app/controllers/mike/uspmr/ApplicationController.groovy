package mike.uspmr

import domain.VendorApplication
import domain.app.Application
import grails.transaction.Transactional

@Transactional
class ApplicationController {

    def index() {}

    static allowedMethods = [testSend: "POST"]

    static responseFormats = ['json', 'html']

    static defaultAction = "index"

    def beforeInterceptor = [action: this.&filter]


    private filter() {
        response.setHeader('Access-Control-Allow-Origin', '*')
        response.setHeader('Access-Control-Allow-Credentials', 'true')
        response.setHeader('Access-Control-Allow-Headers', 'origin, authorization, accept, content-type, x-requested-with')
        response.setHeader('Access-Control-Allow-Methods', 'GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS')
        response.setHeader('Access-Control-Max-Age', '3600')
    }

    def applicationService


    def testSend () {
        println "sb"
        Application application = new Application()
        println application
        try{
            applicationService.saveApplicationToDb(application)
        } catch (Exception e){
              e.printStackTrace()
        }

        Map result = [:]
        result.result = "OK"
        respond result

//        Connection con = null;
//        Statement stmt = null;
//        ResultSet rs = null;
//        try {
//                con = dataSource.getConnection()
//                stmt = con.createStatement();
//                rs = stmt.executeQuery("INSERT INTO Customers (CustomerName, City, Country)\n" +
//                        "VALUES ('Cardinal', 'Stavanger', 'Norway');elect empid, name from Employee");
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }finally{
//            try {
//                if(rs != null) rs.close();
//                if(stmt != null) stmt.close();
//                if(con != null) con.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//    }


    }



}
