/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servlet.demo.mvc.dao.DAOFactory;
import servlet.demo.mvc.model.User;

/**
 *
 * @author hp
 */
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {                
        String path = "login.jsp";
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        List<String> info = new ArrayList<String>();
        if(username==null||"".equals(username)) {
            info.add("user name cannot be empty");
        }
        if(password == null || "".equals(password)) {
            info.add("password cannot be empty");
        }
        if(info.size()==0) {
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            try {
                if(DAOFactory.getIEmpDAOInstance().findLogin(user)) {
                    User temp = DAOFactory.getIEmpDAOInstance().loadByKey(username);
                    info.add("Login Success, Welcome " + temp.getFirstname() + " "+temp.getLastname());
                } else {
                    info.add("Login Failed, wrong user name or password!");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        req.setAttribute("info", info);
        req.getRequestDispatcher(path).forward(req, resp);
    }
    
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {                
        this.doGet(req, resp);
    }
       
}
