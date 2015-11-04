/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.mvc.dbconn;

import java.sql.Connection;

/**
 *
 * @author hp
 */
public interface DatabaseConnection {
    public Connection getConnection();
    public void close();
}
