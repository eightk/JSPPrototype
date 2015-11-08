/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp.tag.demo;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author hp
 */
public class HelloTag extends TagSupport {
    
    public int doStartTag() {
        JspWriter out = super.pageContext.getOut();
        try {
            out.println("<h1>Hello World!</h1>");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return TagSupport.SKIP_BODY;
    }
            
}
