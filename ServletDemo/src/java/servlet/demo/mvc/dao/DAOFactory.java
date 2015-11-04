/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.mvc.dao;

/**
 *
 * @author hp
 */
public class DAOFactory {
    public static IUserDAO getIEmpDAOInstance() throws Exception {
        return new UserDAOProxy();
    }
}
