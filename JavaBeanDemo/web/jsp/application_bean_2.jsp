<%-- 
    Document   : application_bean_2
    Created on : Oct 29, 2015, 10:12:23 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "count" scope="application" class = "javabean.basic.demo.Count"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Application Bean 2</title>
    </head>
    <body>
        <h1>Application Bean 2</h1>
        <h3>Application Bean will only create one object, all user will share that object</h3>
         <h3><jsp:getProperty name="count" property="count"/> times access </h3>
    </body>
</html>
