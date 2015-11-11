<%-- 
    Document   : bundle_message
    Created on : Nov 10, 2015, 7:51:27 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "fmt" uri="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fmt:setBundle demo</title>
    </head>
    <body>
        <h1>fmt:setBundle demo</h1>
        <fmt:setBundle basename="test" var="msg"/>
        <fmt:message key="name" var="nameref" bundle="${msg}"/>
        <h3>name: ${nameref}</h3>
        <fmt:message key="info" var="inforef" bundle="${msg}">
            <fmt:param value="${nameref}"/>
        </fmt:message>
        <h3>info: ${inforef}</h3>            
    </body>
</html>
