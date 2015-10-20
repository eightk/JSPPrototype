/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xml.dom.demo;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 *
 * @author hp
 */
public class createXMLFile {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ParserConfigurationException, TransformerConfigurationException, TransformerException  {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        
        Document doc = builder.newDocument();
        
        Element foodlist = doc.createElement("foodlist");
        Element food = doc.createElement("food");
        Element name = doc.createElement("name");
        Element price = doc.createElement("price");
        Element description = doc.createElement("description");
        Element calories = doc.createElement("calories");
        
        name.appendChild(doc.createTextNode("beef stew"));
        price.appendChild(doc.createTextNode("5.99/lb"));
        description.appendChild(doc.createTextNode("lean beef cube"));
        calories.appendChild(doc.createTextNode("120/100g"));
        food.appendChild(name);
        food.appendChild(price);
        food.appendChild(description);
        food.appendChild(calories);
        foodlist.appendChild(food);
        doc.appendChild(foodlist);
        
        TransformerFactory tf = TransformerFactory.newInstance();
        Transformer trans = tf.newTransformer();
        DOMSource source = new DOMSource(doc);
        StreamResult result = new StreamResult("src/xml/dom/demo/createResult.xml");
        
        trans.transform(source, result);        
        }
}
