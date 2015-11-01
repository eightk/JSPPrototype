<%-- 
    Document   : success
    Created on : Oct 31, 2015, 10:58:27 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
    </head>
    <jsp:useBean id="reg" scope="session" class="javabean.basic.demo.Register"/>
    <body>
        <h1>Success for validate demo</h1>
        user name: <jsp:getProperty name="reg" property="name"/><br/>
        email: <jsp:getProperty name="reg" property="email"/><br/>
        age: <jsp:getProperty name="reg" property="age"/><br/>
        
    </body>
</html>
