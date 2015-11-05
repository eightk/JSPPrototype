/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.listener;

import java.util.Set;
import java.util.TreeSet;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 *
 * @author hp
 */
public class OnlineUserList implements HttpSessionAttributeListener, HttpSessionListener, ServletContextListener {
     @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        Set all = (Set)this.app.getAttribute("online");
        all.add(event.getValue());
        this.app.setAttribute("online", all);
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        Set all = (Set)this.app.getAttribute("online");
        all.remove(event.getValue());
        this.app.setAttribute("online", all);
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        Set all = (Set)this.app.getAttribute("online");
        all.add(event.getValue());
        this.app.setAttribute("online", all);
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        Set all = (Set)this.app.getAttribute("online");
        all.remove(se.getSession().getAttribute("username"));
        this.app.setAttribute("online", all);
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        this.app = sce.getServletContext();
        this.app.setAttribute("online", new TreeSet());
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
    
    private ServletContext app = null;
}
