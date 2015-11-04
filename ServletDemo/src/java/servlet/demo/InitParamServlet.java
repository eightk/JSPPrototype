/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
public class InitParamServlet extends HttpServlet {
    
    public void init(ServletConfig config) throws ServletException {
        this.initParam = config.getInitParameter("ref");
    }
    
    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("Init Param: " + this.initParam);
    }
    
    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        this.doGet(req, resp);
    }
    
    private String initParam = null;
}
