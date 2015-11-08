<%-- 
    Document   : print_cal
    Created on : Nov 5, 2015, 8:56:50 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Print cal</title>
    </head>
    <body>
        <h1>Print Cal</h1>
        <%
            request.setAttribute("num1", 20);
            request.setAttribute("num2", 30);
            request.setAttribute("flag1", true);
            request.setAttribute("flag2", false);
        %>
        ${num1>num2}<br/>
        ${flag1||flag2}
    </body>
</html>
