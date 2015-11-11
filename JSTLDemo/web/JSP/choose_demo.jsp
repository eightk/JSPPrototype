<%-- 
    Document   : choose_demo
    Created on : Nov 9, 2015, 8:00:21 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:choose c:when c:otherwise demo</title>
    </head>
    <body>
        <h1>c:choose c:when c:otherwise demo</h1>
        <%
            pageContext.setAttribute("info", 10);
        %>
        <c:choose>
            <c:when test="${info==10}">
                <h3>attribute is 10</h3>
            </c:when>
            <c:when test="${info==20}">
                <h3>attribute is 20</h3>
            </c:when>
            <c:otherwise>
                <h3>all conditions wrong</h3>
            </c:otherwise>
        </c:choose>
    </body>
</html>
