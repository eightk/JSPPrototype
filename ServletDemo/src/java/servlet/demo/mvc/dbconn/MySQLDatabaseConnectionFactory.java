/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.mvc.dbconn;

/**
 *
 * @author hp
 */
public class MySQLDatabaseConnectionFactory {

    public static DatabaseConnection getDatabaseConnection() {
        return new MySQLDatabaseConnection();
    }

}
