<%-- 
    Document   : format_number
    Created on : Nov 10, 2015, 7:57:08 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "fmt" uri="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fmt:formatNumber demo</title>
    </head>
    <body>
        <h1>fmt:formatNumber demo</h1>
        <fmt:formatNumber value="123456.7890123" type="currency" maxIntegerDigits="5" currencySymbol="$" currencyCode="CNY" maxFractionDigits="3" groupingUsed="true" var="num"/>
        <h3>formated number: ${num}</h3>
        <fmt:formatNumber value="123456.7890123" pattern="##.####E0" var="num"/>
        <h3>scientific calculation: ${num}</h3>
    </body>
</html>
