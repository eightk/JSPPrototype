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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("      init login filter");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("      before doing login filter");
        HttpServletRequest req = (HttpServletRequest)request;
        HttpSession ses = req.getSession();
        if(ses.getAttribute("username")!=null) {
            chain.doFilter(request, response);
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }        
        System.out.println("      after doing login filter");
    }

    @Override
    public void destroy() {
    }
}
