<%-- 
    Document   : if_demo
    Created on : Nov 9, 2015, 7:42:21 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:if demo</title>
    </head>
    <body>
        <h1>c:if demo</h1>
        <c:if test="${param.ref =='demo'}" var="res1">
            <h3>welcome ${param.ref}</h3>
        </c:if>
        <c:if test="${30>10}" var="res2">
            <h3>30>10</h3>
        </c:if>
    </body>
</html>
