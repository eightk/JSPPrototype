<%-- 
    Document   : hello_jstl
    Created on : Nov 9, 2015, 7:18:03 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>hello jstl</title>
    </head>
    <body>
        <h1>Hello JSTL</h1>
        <h3><c:out value="C:OUT VALUE!"/></h3>
    </body>
</html>
