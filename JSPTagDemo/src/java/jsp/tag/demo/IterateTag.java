/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp.tag.demo;

import java.util.Iterator;
import java.util.List;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author hp
 */
public class IterateTag extends TagSupport {

    @Override
    public int doStartTag() {
        System.out.println("Iterate tag do start!");
        Object value = null;
        if ("page".equals(this.scope)) {
            value = super.pageContext.getAttribute(name, PageContext.PAGE_SCOPE);
        } else if ("request".equals(scope)) {
            value = super.pageContext.getAttribute(name, PageContext.REQUEST_SCOPE);
        } else if ("session".equals(scope)) {
            value = super.pageContext.getAttribute(name, PageContext.SESSION_SCOPE);
        } else {
            value = super.pageContext.getAttribute(name, PageContext.APPLICATION_SCOPE);
        }
        System.out.println(scope + " " + name + " " + value);
        if (value != null && value instanceof List<?>) {
            this.iter = ((List<?>) value).iterator();
            if (iter.hasNext()) {
                String temp = (String) iter.next();
                System.out.println(temp);
                super.pageContext.setAttribute(id, temp);
                return TagSupport.EVAL_BODY_INCLUDE;
            } else {
                return TagSupport.SKIP_BODY;
            }
        } else {
            return TagSupport.SKIP_BODY;
        }
    }

    @Override
    public int doAfterBody() {
        System.out.println("Do after Body start!");
        if (iter.hasNext()) {            
            String temp = (String) iter.next();
            System.out.println(temp);
            super.pageContext.setAttribute(id, temp);
            return TagSupport.EVAL_BODY_AGAIN;
        } else {
            return TagSupport.SKIP_BODY;
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
