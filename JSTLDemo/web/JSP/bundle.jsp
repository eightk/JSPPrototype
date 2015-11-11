<%-- 
    Document   : bundle
    Created on : Nov 10, 2015, 7:43:50 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "fmt" uri="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fmt:bundle demo</title>
    </head>
    <body>
        <h1>fmt:bundle demo</h1>
        <fmt:bundle basename="test">
            <fmt:message key="name" var="nameref"/>                         
        </fmt:bundle>
        <h3>name: ${nameref} </h3>
        <fmt:bundle basename="test">
            <fmt:message key="info" var="inforef">
                <fmt:param value="info value"/>
            </fmt:message>  
        </fmt:bundle>
        <h3>info: ${inforef} </h3>
    </body>
</html>
