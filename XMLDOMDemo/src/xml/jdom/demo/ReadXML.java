/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xml.jdom.demo;

import java.util.List;
import org.jdom2.*;
import org.jdom2.input.SAXBuilder;

/**
 *
 * @author hp
 */
public class ReadXML {

    public static void main(String args[]) throws Exception {
        SAXBuilder builder = new SAXBuilder();
        Document read_doc = builder.build("src/xml/jdom/demo/writeXML.xml");
        Element foodlist = read_doc.getRootElement();
        List list = foodlist.getChildren("food");
        for (int i = 0; i < list.size(); i++) {
            Element e = (Element) list.get(i);
            String name = e.getChildText("name");
            String id = e.getChild("name").getAttribute("id").getValue();
            String price = e.getChildText("price");
            String description = e.getChildText("description");
            String calories = e.getChildText("calories");
            System.out.println("--------- Recepie ---------");
            System.out.println("Name: " + name);
            System.out.println("Price: " + price);
            System.out.println("Dexcription: " + description);
            System.out.println("Calories: " + calories);
            System.out.println("---------------------------");
            System.out.println();
        }

    }

}
