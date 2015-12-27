/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package custom.tag.demo;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.SkipPageException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author hp
 */
public class SimpleTagTest6 extends SimpleTagSupport {
    
    @Override
    public void doTag() throws JspException, IOException {
        getJspBody().getJspContext().getOut().print("About to throw skip page exception<br/>");
        getJspBody().invoke(null);
        if(true) {
            throw new SkipPageException();
        }
        getJspBody().getJspContext().getOut().print("Not showingTest Line 2<br/>");
        
    }
    
}
