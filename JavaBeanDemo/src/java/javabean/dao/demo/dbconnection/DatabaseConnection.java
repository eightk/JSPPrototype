/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean.dao.demo.dbconnection;

import java.sql.Connection;

/**
 *
 * @author hp
 */
public interface DatabaseConnection {
    public Connection getConnection();
    public void close();
}
