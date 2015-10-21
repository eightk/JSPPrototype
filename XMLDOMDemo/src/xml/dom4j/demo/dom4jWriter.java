/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xml.dom4j.demo;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

/**
 *
 * @author hp
 */
public class dom4jWriter {
    public static void main(String args[]) {
        Document doc = DocumentHelper.createDocument();
        Element foodlist = doc.addElement("foodlist");
        Element food = foodlist.addElement("food");
        Element name = food.addElement("name");
        Element price = food.addElement("price");
        Element description = food.addElement("description");
        Element calories = food.addElement("calories");
        name.setText("banana");
        price.setText("$0.59/lb");
        description.setText("BANANA!!!!");
        calories.setText("200-240 ea");
        
        OutputFormat format = OutputFormat.createPrettyPrint();
        
        try {
            XMLWriter writer = new XMLWriter(new FileOutputStream(new File("src/xml/dom4j/demo/dom4jWriterResult.xml")), format);
            writer.write(doc);
            writer.close();
        } catch(IOException ex) {
            ex.printStackTrace();
        }
    }
}
