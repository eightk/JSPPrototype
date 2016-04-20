/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

/**
 *
 * @author huico
 */
public class HttpServletResponseWrapperDemo extends HttpServletResponseWrapper {
    
    public HttpServletResponseWrapperDemo(HttpServletResponse response) {
        super(response);
    }
    
}
