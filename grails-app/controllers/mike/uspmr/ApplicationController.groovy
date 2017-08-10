package mike.uspmr

import javax.sql.DataSource
import java.sql.Connection
import java.sql.ResultSet
import java.sql.SQLException
import java.sql.Statement

class ApplicationController {

    def index() {}

    static allowedMethods = [testSend: "GET"]

    DataSource dataSource


    def testSend () {
        Application application = new Application()
        application.save()
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
