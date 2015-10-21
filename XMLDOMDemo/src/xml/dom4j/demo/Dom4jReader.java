package xml.dom4j.demo;

import java.io.File;
import java.util.Iterator;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author hp
 */
public class Dom4jReader {

    public static void main(String[] args) {
        File file = new File("src/xml/dom4j/demo/dom4jWriterResult.xml");
        SAXReader reader = new SAXReader();
        Document doc = null;

        try {
            doc = reader.read(file);
        } catch (DocumentException ex) {
            ex.printStackTrace();
        }

        Element root = doc.getRootElement();
        Iterator iter = root.elementIterator();
        while (iter.hasNext()) {
            Element food = (Element) iter.next();
            System.out.println("--------- Recepie ---------");
            System.out.println("Name: " + food.elementText("name"));
            System.out.println("Price: " + food.elementText("price"));
            System.out.println("Dexcription: " + food.elementText("description"));
            System.out.println("Calories: " + food.elementText("calories"));
            System.out.println("---------------------------");
            System.out.println();
        }
    }
}
