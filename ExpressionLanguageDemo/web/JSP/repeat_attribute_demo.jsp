<%-- 
    Document   : repeat_attribute_demo
    Created on : Nov 5, 2015, 7:46:42 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Repeat Attribute EL Demo</title>
    </head>
    <body>
        <h1>Repeat Attribute EL Demo</h1>
        <h2>will load the smallest by the end</h2>
        <%
            pageContext.setAttribute("info", "pageContext Scope");
            request.setAttribute("info", "request Scope");
            session.setAttribute("info", "session Scope");
            application.setAttribute("info", "application Scope");
        %>
        
        <h3>${info} </h3>
    </body>
</html>
