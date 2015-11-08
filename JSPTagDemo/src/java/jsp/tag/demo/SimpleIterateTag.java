/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp.tag.demo;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author hp
 */
public class SimpleIterateTag extends SimpleTagSupport {
    
    @Override
    public void doTag() throws JspException, IOException {
        System.out.println("Simple Iterate tag do start!");
        Object value = null;
        if ("page".equals(this.scope)) {
            value = super.getJspContext().getAttribute(name, PageContext.PAGE_SCOPE);
        } else if ("request".equals(scope)) {
            value = super.getJspContext().getAttribute(name, PageContext.REQUEST_SCOPE);
        } else if ("session".equals(scope)) {
            value = super.getJspContext().getAttribute(name, PageContext.SESSION_SCOPE);
        } else {
            value = super.getJspContext().getAttribute(name, PageContext.APPLICATION_SCOPE);
        }
        if (value != null && value instanceof List<?>) {
            this.iter = ((List<?>) value).iterator();
            while (iter.hasNext()) {
                String temp = (String) iter.next();
                System.out.println(temp);
                super.getJspContext().setAttribute(id, temp);
                //this is the code pushing the value to the JSP
                super.getJspBody().invoke(null);
            }
        }
    }  

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private String name;
    private String scope;
    private String id;
    private Iterator<?> iter;
}
