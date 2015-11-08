/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp.tag.demo;

import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author hp
 */
public class AttributeTag extends TagSupport {

    @Override
    public int doStartTag() {
        System.out.println("Attribute tag do start!");
        Object value = null;
        if("page".equals(scope)) {
            value = super.pageContext.getAttribute(name,PageContext.PAGE_SCOPE);
        } else if("request".equals(scope)) {
            value = super.pageContext.getAttribute(name,PageContext.REQUEST_SCOPE);
        } else if("session".equals(scope)) {
            value = super.pageContext.getAttribute(name,PageContext.SESSION_SCOPE);
        } else {
            value = super.pageContext.getAttribute(name,PageContext.APPLICATION_SCOPE);
        }
        if(value == null) {
            return TagSupport.SKIP_BODY;
        } else {
            return TagSupport.EVAL_BODY_INCLUDE;
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
    
    private String name;
    private String scope;
}
