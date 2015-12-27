/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package custom.tag.demo;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author hp
 */
public class SimpleTagTest4 extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {
        String[] movies = new String[] {"movie1","movie2","movie3"};
        if (movies != null && movies.length > 0) {
            for (String movie : movies) {
                getJspContext().setAttribute("movie", movie);
                getJspBody().invoke(null);
            }
        }
    }

}
