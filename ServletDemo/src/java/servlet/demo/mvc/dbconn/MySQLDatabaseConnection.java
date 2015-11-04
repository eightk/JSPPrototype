/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.mvc.dbconn;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author hp
 */
public class MySQLDatabaseConnection implements DatabaseConnection {

    public MySQLDatabaseConnection() {
        try {
            Class.forName(DBDRIVER);
            this.conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Connection getConnection() {
        return this.conn;
    }

    @Override
    public void close() {
        if (this.conn != null) {
            try {
                this.conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static final String DBDRIVER = "org.gjt.mm.mysql.Driver";
    public static final String DBURL = "jdbc:mysql://localhost:3306/testdb";
    public static final String DBUSER = "sa";
    public static final String DBPASSWORD = "Treviso1";
    private Connection conn = null;
}
