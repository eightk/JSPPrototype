<%-- 
    Document   : set_Demo
    Created on : Nov 9, 2015, 7:29:02 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>C:SET DEMO</title>
    </head>
    <body>
        <h1>C:SET DEMO</h1>
        <c:set var="info" value="info value" scope = "request"/>
        <h3>attribute value: ${info}</h3>
    </body>
</html>
