/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp.tag.demo;

import java.util.Iterator;
import java.util.List;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 *
 * @author hp
 */
public class BodyIterateTag extends BodyTagSupport {

    @Override
    public int doStartTag() {
        System.out.println("Body Iterate tag do start!");
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
                return BodyTagSupport.EVAL_BODY_BUFFERED;
            } else {
                return BodyTagSupport.SKIP_BODY;
            }
        } else {
            return BodyTagSupport.SKIP_BODY;
        }
    }

    @Override
    public int doAfterBody() {
        System.out.println("body iterate tag Do after Body start!");
        if (iter.hasNext()) {
            String temp = (String) iter.next();
            System.out.println(temp);
            super.pageContext.setAttribute(id, temp);
            return BodyTagSupport.EVAL_BODY_AGAIN;
        } else {
            return BodyTagSupport.SKIP_BODY;
        }
    }

    @Override
    public int doEndTag() {
        System.out.println("body iterate tag end tag!");
        if (super.bodyContent != null) {
            try {
                super.bodyContent.writeOut(super.getPreviousOut());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return BodyTagSupport.EVAL_PAGE;
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
