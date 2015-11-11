<%-- 
    Document   : fortoken_demo
    Created on : Nov 10, 2015, 6:50:02 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:forToken demo</title>
    </head>
    <body>
        <h1>c:forToken demo</h1>
        <h3>print all: </h3>
        <%
            String ref = "value1,value2,value3,value4,value5";
            pageContext.setAttribute("ref", ref);
        %>
        <c:forTokens items="${ref}" delims="," var="mem">
            ${mem}
        </c:forTokens>
        <h3>print value with gap 2: </h3>
        <c:forTokens items="${ref}" delims="," var="mem" step="2">
            ${mem}
        </c:forTokens>
        <h3>print first two values: </h3>
        <c:forTokens items="${ref}" delims="," var="mem" begin="0" end="1">
            ${mem}
        </c:forTokens>      
    </body>
</html>
