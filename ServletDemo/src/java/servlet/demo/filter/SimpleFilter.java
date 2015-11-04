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
public class SimpleFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String initParam = filterConfig.getInitParameter("ref");
        System.out.println("*********start init, init param = " + initParam);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("**********before execute doFilter()");
        chain.doFilter(request, response);
        System.out.println("**********after execute doFilter()");
    }

    @Override
    public void destroy() {
        System.out.println("**********destroy filter");
    }
    
}
