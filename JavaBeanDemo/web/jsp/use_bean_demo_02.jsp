<%-- 
    Document   : use_bean_demo_02
    Created on : Oct 28, 2015, 10:10:37 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="simple" scope="page" class="javabean.basic.demo.SimpleJavaBean"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Bean Demo 02</title>
    </head>
    <body>
        <h1>Java Bean Demo 02</h1>
        <h2>We can skip the object create once we use jsp:useBean </h2>
        <%
            simple.setName("Richard");
            simple.setAge(28);
        %>
        
        <h3>name: <%=simple.getName()%> </h3>
        <h3>age <%=simple.getAge()%> </h3>
    </body>
</html>
