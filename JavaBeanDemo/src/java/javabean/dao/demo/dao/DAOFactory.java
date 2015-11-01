/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean.dao.demo.dao;

/**
 *
 * @author hp
 */
public class DAOFactory {
    public static IEmpDAO getIEmpDAOInstance() throws Exception {
        return new EmpDAOProxy();
    }
}
