<%-- 
    Document   : get_attribute_demo
    Created on : Nov 5, 2015, 7:50:18 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Attribute EL Demo</title>
    </head>
    <body>
        <h1>Get Attribute EL Demo</h1>
        <h2>add the scope before the attribute</h2>
        <%
            pageContext.setAttribute("info", "pageScope");
            request.setAttribute("info", "requestScope");
            session.setAttribute("info", "sessionScope");
            application.setAttribute("info", "applicationScope");
        %>
        
        <h3>${pageScope.info} </h3>
        <h3>${requestScope.info} </h3>
        <h3>${sessionScope.info} </h3>
        <h3>${applicationScope.info} </h3>
    </body>
</html>