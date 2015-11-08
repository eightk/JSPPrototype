/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp.tag.demo;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author hp
 */
public class SimpleDateTag extends SimpleTagSupport {

    public void doTag() {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        try {
            super.getJspContext().getOut().write(sdf.format(new Date()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    private String format;
}
