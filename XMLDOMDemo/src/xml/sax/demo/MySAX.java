/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xml.sax.demo;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/**
 *
 * @author hp
 */
public class MySAX extends DefaultHandler {

    @Override
    public void startDocument() throws SAXException {
        System.out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        System.out.println();
    }
    
    @Override
    public void endDocument() throws SAXException {
        System.out.println("\n Reading file finish");
    }
    
    @Override
    public void startElement(String uri, String localName, String name, Attributes attributes) throws SAXException {
        System.out.print("<");
        System.out.print(name);
        if (attributes != null) {
            for (int x = 0; x < attributes.getLength(); x++) {
                System.out.print(" " + attributes.getQName(x) + "=\""
                        + attributes.getValue(x) + "\"");
            }
        }
        System.out.print(">");
        System.out.println();
    }
    
    @Override
    public void characters(char[] ch, int start, int length) 
        throws SAXException{
        System.out.print(new String(ch, start, length));
    }
    
    @Override
    public void endElement(String uri, String localName, String name) throws SAXException {
        System.out.print("</");
        System.out.print(name);
        System.out.print(">");
        System.out.println();
    }
    
}
