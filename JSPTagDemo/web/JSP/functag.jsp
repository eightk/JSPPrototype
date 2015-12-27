<%-- 
    Document   : functag
    Created on : Dec 9, 2015, 9:45:36 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="functag" uri="func_tag"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Function Tag</title>
    </head>
    <body>
        <h1>Test Function Tag</h1>
        <%request.setAttribute("test","test");%>
        ${functag:rollIt()}<br/>
        ${42 div 0}<br/>
        ${requestScope['test']}
    </body>
</html>
