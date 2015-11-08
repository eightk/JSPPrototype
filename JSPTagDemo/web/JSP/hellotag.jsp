<%-- 
    Document   : hellotag
    Created on : Nov 7, 2015, 11:41:42 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="mytag" uri ="hello_tag" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello Tag</title>
    </head>
    <body>
        <h1>Hello Tag</h1>
        <h2><mytag:hello/></h2>
    </body>
</html>
