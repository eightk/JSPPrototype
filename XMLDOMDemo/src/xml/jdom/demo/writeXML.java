/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xml.jdom.demo;

import java.io.FileWriter;
import java.io.IOException;
import org.jdom2.*;
import org.jdom2.output.XMLOutputter;

/**
 *
 * @author hp
 */
public class writeXML {

    public static void main(String[] args) {    
        Element foodlist = new Element("foodlist");
        Element food = new Element("food");
        Element name = new Element("name");
        Element price = new Element("price");
        Element description = new Element("description");
        Element calories = new Element("calories");
        Attribute id = new Attribute("id", "001");
        Document doc = new Document(foodlist);
        name.setText("meat ball");
        price.setText("$1 ea");
        description.setText("Made by ground beef and ground pork mix");
        calories.setText("50 ea");
        name.setAttribute(id);
        food.addContent(name);
        food.addContent(price);
        food.addContent(description);
        food.addContent(calories);
        foodlist.addContent(food);
        XMLOutputter out = new XMLOutputter();
        try {
            out.output(doc, new FileWriter("src/xml/jdom/demo/writeXML.xml"));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

}
