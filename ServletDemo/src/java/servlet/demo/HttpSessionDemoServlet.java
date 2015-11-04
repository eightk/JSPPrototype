/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
public class HttpSessionDemoServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        HttpSession sess = req.getSession();
        System.out.println("Session Id: " + sess.getId());
        sess.setAttribute("username", "Richard");
        System.out.println("username content: " + sess.getAttribute("username"));
    }
    
    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        this.doGet(req, resp);
    }

}
