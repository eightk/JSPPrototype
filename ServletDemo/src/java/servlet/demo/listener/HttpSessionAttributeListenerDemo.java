/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.listener;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 *
 * @author hp
 */
public class HttpSessionAttributeListenerDemo implements HttpSessionAttributeListener {
    
    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        System.out.println("      added attribute: attribute name: " + event.getName() + " attribute value: " + event.getValue());
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        System.out.println("      removed attribute: attribute name: " + event.getName() + " attribute value: " + event.getValue());
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        System.out.println("      replaced attribute: attribute name: " + event.getName() + " attribute value: " + event.getValue());
    }
}
