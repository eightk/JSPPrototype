/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

/**
 *
 * @author hp
 */
public class ServletRequestListenerDemo implements ServletRequestListener {

    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        System.out.println("$$$   Init request: http://" 
                + sre.getServletRequest().getRemoteAddr()
                + sre.getServletContext().getContextPath());        
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        System.out.println("$$$   Destory request: http://" 
                + sre.getServletRequest().getRemoteAddr()
                + sre.getServletContext().getContextPath());
    }
    
}
