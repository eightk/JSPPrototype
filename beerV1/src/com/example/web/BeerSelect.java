package com.example.web;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import com.example.model.*;
public class BeerSelect extends HttpServlet {
public void doPost(HttpServletRequest request,
HttpServletResponse response)
throws IOException, ServletException {

String colorParam = request.getParameter("color");
String bodyParam = request.getParameter("body");
String[] sizeParam = request.getParameterValues("sizes");
String sizeStr = "";
if(sizeParam!=null && sizeParam.length > 0) {
	for(String temp: sizeParam) {
		sizeStr = sizeStr + temp + " ";
	}	
}
BeerExpert be = new BeerExpert();
List result = be.getBrands(colorParam,bodyParam,sizeStr);

request.setAttribute("styles", result);
RequestDispatcher view =
request.getRequestDispatcher("result.jsp");
view.forward(request, response);
}
}