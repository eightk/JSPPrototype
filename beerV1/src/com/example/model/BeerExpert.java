package com.example.model;
import java.util.*;
public class BeerExpert {
public List getBrands(String color, String body, String size) {
String result = size + body;
List brands = new ArrayList();
if (color.equals("amber")) {
String result4 = result+" "+"Jack Amber";
brands.add(result4);
String result1 = result+" "+"Red Moose";
brands.add(result1);
}
else {
String result3 = result+" "+"Jail Pale Ale";
brands.add(result3);
String result2 = result+" "+"Gout Stout";
brands.add(result2);
}
return(brands);
}
}