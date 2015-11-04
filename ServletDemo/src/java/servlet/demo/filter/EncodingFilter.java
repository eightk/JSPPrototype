/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author hp
 */
public class EncodingFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.charSet = filterConfig.getInitParameter("charset");
        System.out.println("   init encoding filter: " + charSet);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("   setting encoding filter: " + charSet);
        request.setCharacterEncoding(this.charSet);
        chain.doFilter(request, response);
        System.out.println("   after setting encoding filter: " + charSet);
    }

    @Override
    public void destroy() {
    }
    
    private String charSet;
}
