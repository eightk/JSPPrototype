/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
public class ServletContextDemoServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        ServletContext app = super.getServletContext();
        System.out.println("Real Path: " + app.getRealPath("/"));        
    }
    
    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        this.doGet(req, resp);
    }
}
