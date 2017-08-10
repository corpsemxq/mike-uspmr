package mike.uspmr.factory

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource

import javax.sql.DataSource
import java.sql.Connection

class DataBaseFactory {
    def grailsApplication

    DataSource getDataSource() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setUser(grailsApplication.config.dataSource.username)
        dataSource.setPassword(grailsApplication.config.dataSource.password)
        dataSource.setServerName(grailsApplication.config.dataSource.serverName)
        dataSource.setDatabaseName(grailsApplication.config.dataSource.dbName)
        return dataSource
    }

}
