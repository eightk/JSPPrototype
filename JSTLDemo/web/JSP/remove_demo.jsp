<%-- 
    Document   : remove_demo
    Created on : Nov 9, 2015, 7:35:26 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:remove demo</title>
    </head>
    <body>
        <h1>c:remove demo</h1>
        <c:set var="info" scope="request" value="info value"/>
        <c:remove var="info" scope="request"/>
        <h3>attribute value: <c:out value="${info}" default="no such attribute"/> </h3>
    </body>
</html>
