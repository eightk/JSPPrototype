/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp.tag.demo;

import java.io.IOException;
import java.util.*;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.DynamicAttributes;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author hp
 */
public class DynamicAddTag extends SimpleTagSupport implements DynamicAttributes {
    
    @Override
    public void doTag() throws IOException {
        Float sum = 0.0f;
        Iterator<Map.Entry<String, Float>> iter = this.num.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry<String, Float> value = iter.next();
            sum += value.getValue();
        }
        super.getJspContext().getOut().write(sum + " ");
    }
    
    @Override
    public void setDynamicAttribute(String uri, String localName, Object value) throws JspException {
        num.put(localName, Float.parseFloat(value.toString()));
        
    }
    
    private Map<String, Float> num = new HashMap<String, Float>();

    
}
