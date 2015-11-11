<%-- 
    Document   : locale
    Created on : Nov 10, 2015, 7:37:28 PM
    Author     : hp
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "fmt" uri="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fmt:locale demo</title>
    </head>
    <body>
        <h1>fmt:locale demo</h1>
        <%
            pageContext.setAttribute("date", new Date());
        %>
        <h3>China locale: <fmt:setLocale value="zh_CN"/> <fmt:formatDate value="${date}"/></h3>
        <h3>English locale: <fmt:setLocale value="en_CA"/> <fmt:formatDate value="${date}"/></h3>
    </body>
</html>
