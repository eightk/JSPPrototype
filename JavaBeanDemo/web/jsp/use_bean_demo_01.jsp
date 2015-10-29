<%-- 
    Document   : use_bean_demo_01
    Created on : Oct 28, 2015, 10:10:37 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "javabean.basic.demo.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Bean Demo 01</title>
    </head>
    <body>
        <h1>Java Bean Demo 01</h1>
        
        <%
            SimpleJavaBean simple = new SimpleJavaBean();
            simple.setName("Richard");
            simple.setAge(28);
        %>
        
        <h3>name: <%=simple.getName()%> </h3>
        <h3>age <%=simple.getAge()%> </h3>
    </body>
</html>
