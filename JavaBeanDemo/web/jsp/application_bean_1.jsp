<%-- 
    Document   : application_beam_1
    Created on : Oct 29, 2015, 9:54:47 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "count" scope="application" class = "javabean.basic.demo.Count"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Application Bean</title>
    </head>
    <body>
        <h1>Application Bean</h1>
        <h3> <jsp:getProperty property="count" name="count"/> times access</h3>
            <jsp:forward page="application_bean_2.jsp"/>
    </body>
</html>
