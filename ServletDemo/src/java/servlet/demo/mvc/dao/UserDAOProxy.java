/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.mvc.dao;

import java.util.List;
import servlet.demo.mvc.dbconn.DatabaseConnection;
import servlet.demo.mvc.dbconn.MySQLDatabaseConnection;
import servlet.demo.mvc.model.User;

/**
 *
 * @author hp
 */
public class UserDAOProxy implements IUserDAO {

    public UserDAOProxy() throws Exception {
        this.dbc = new MySQLDatabaseConnection();
        this.dao = new UserDAOImpl(this.dbc.getConnection());
    }

    @Override
    public boolean doCreate(User user) throws Exception {
        boolean flag = false;
        try {
            if (this.dao.loadByKey(user.getUsername()) == null) {
                flag = this.dao.doCreate(user);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.dbc.close();
        }
        return flag;
    }

    @Override
    public List<User> loadAll() throws Exception {
        List<User> all = null;
        try {
            all = dao.loadAll();
        } catch (Exception e) {
            throw e;
        } finally {
            this.dbc.close();
        }
        return all;
    }

    @Override
    public User loadByKey(String username) throws Exception {
        User emp = null;        
        try {
            emp = dao.loadByKey(username);
        } catch (Exception e) {
            throw e;
        } finally {
            this.dbc.close();
        }
        return emp;
    }
    
    public boolean findLogin(User user)  throws Exception {
        return dao.findLogin(user);
    }

    private DatabaseConnection dbc = null;
    private IUserDAO dao = null;

}
