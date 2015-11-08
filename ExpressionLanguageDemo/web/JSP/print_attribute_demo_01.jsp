<%-- 
    Document   : print_attribute_demo_01
    Created on : Nov 5, 2015, 7:42:13 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL print Attribute Demo</title>
    </head>
    <body>
        <h1>EL print Attribute Demo</h1>
        <%
            request.setAttribute("info", "attribute in Request");
        %>
        <h3>${info}</h3>
    </body>
</html>
