/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.mvc.dao;

import java.util.List;
import servlet.demo.mvc.model.User;

/**
 *
 * @author hp
 */
public interface IUserDAO {
    public boolean doCreate(User user) throws Exception;
    
    public List<User> loadAll() throws Exception;
    
    public User loadByKey(String username) throws Exception;
    
    public boolean findLogin(User user) throws Exception;
}
