/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xml.dom.demo;

import java.io.File;
import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 *
 * @author hp
 */
public class readXML {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ParserConfigurationException, SAXException, IOException {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        File file = new File("src/xml/dom/demo/03.xml");
        Document doc = builder.parse(file);
        NodeList nl = doc.getElementsByTagName("food");
        for (int i = 0; i < nl.getLength(); i++) {
            Element e = (Element)nl.item(i);
            printTagValue(e, "name");
            printTagValue(e, "price");
            printTagValue(e, "description");
            printTagValue(e, "calories");
            System.out.println();
//printAllNodeInfo(n);
            
        }
    }
    
    private static void printTagValue(Element e, String tagName) {
        System.out.println(e.getElementsByTagName(tagName).item(0).getNodeName() + ":" + e.getElementsByTagName(tagName).item(0).getTextContent());            
    }

    private static void printAllNodeInfo(Node n) {
        if (n.hasChildNodes()) {
            NodeList nl = n.getChildNodes();
            for (int i = 0; i < nl.getLength(); i++ ) {
                Node node = nl.item(i);
                System.out.println(node.getNodeName() + ":" + node.getTextContent());
                printAllNodeInfo(n);
            }
        }
    }

}
