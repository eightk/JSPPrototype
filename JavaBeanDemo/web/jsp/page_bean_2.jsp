<%-- 
    Document   : page_bean_2
    Created on : Oct 29, 2015, 9:59:07 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "count" scope="page" class = "javabean.basic.demo.Count"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Bean 2</title>
    </head>
    <body>
        <h1>Page Bean 2</h1>
        <h3>Page bean will create object for every single page.</h3>
        <h3><jsp:getProperty name="count" property="count"/> times access </h3>
    </body>
</html>
