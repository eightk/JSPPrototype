/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean.dao.demo.dbconnection;

/**
 *
 * @author hp
 */
public class MySQLDatabaseConnectionFactory {

    public static DatabaseConnection getDatabaseConnection() {
        return new MySQLDatabaseConnection();
    }

}
