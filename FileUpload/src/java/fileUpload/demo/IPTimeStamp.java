/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fileUpload.demo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 *
 * @author hp
 */
public class IPTimeStamp {

    public IPTimeStamp() {
    }
    
    public IPTimeStamp(String ip) {
        this.ip = ip;
    }
    
    public String getIPTimeRand() {
        StringBuffer buf = new StringBuffer();
        if(this.ip !=null) {
            String s[] = this.ip.split("\\:");
            for(int i=0;i<s.length; i++) {
                buf.append(this.addZero(s[i],3));
            }
        }
        buf.append(this.getTimeStamp());
        Random r = new Random();
        for(int i=0;i<3;i++) {
            buf.append(r.nextInt(10));
        }
        return buf.toString();
    }
    
    private String addZero(String str, int len) {
        StringBuffer s = new StringBuffer();
        s.append(str);
        while(s.length()<len) {
            s.insert(0, "0");            
        }
        return s.toString();
    }
    
    public String getDate() {
        return sdf.format(new Date());
    }
    public String getTimeStamp() {
        return timeStampFormat.format(new Date());
    }
    
    private String ip = null;    
    private SimpleDateFormat timeStampFormat = new SimpleDateFormat("yyyyMMddHHmmssSS");
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SS");
}
