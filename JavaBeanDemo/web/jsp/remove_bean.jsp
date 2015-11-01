<%-- 
    Document   : remove_Bean
    Created on : Oct 29, 2015, 9:54:47 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "count" scope="session" class = "javabean.basic.demo.Count"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session Bean</title>
    </head>
    <body>
        <h1>Session Bean</h1>
        <h3>once the bean being removed, the refresh has to create a new one.</h3>
        <h3> <jsp:getProperty property="count" name="count"/> times access</h3>
            <%session.removeAttribute("count");%>
    </body>
</html>
