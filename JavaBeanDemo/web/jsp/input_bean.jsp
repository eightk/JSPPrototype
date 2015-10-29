<%-- 
    Document   : input_bean
    Created on : Oct 28, 2015, 10:30:11 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javabean.basic.demo.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Input Bean jsp</title>
    </head>
    <body>
        <h1>Input Bean jsp</h1>
        <%
            SimpleJavaBean simple = new SimpleJavaBean();
            simple.setName(request.getParameter("name"));
            simple.setAge(Integer.parseInt(request.getParameter("age")));
        %>
        <h3>name: <%=simple.getName()%> </h3>
        <h3>age: <%=simple.getAge()%> </h3>
    </body>
</html>
