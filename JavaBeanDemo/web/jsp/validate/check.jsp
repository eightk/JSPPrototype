<%-- 
    Document   : check
    Created on : Oct 31, 2015, 10:55:43 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check</title>
    </head>
    <jsp:useBean id="reg" scope="session" class="javabean.basic.demo.Register"/>
    <jsp:setProperty name="reg" property="*"/>
    <body>
        <h1>Check for validate demo</h1>
        <%if(reg.isValidate()) {%>
            <jsp:forward page="success.jsp"/>
        <%} else {%>
            <jsp:forward page="index.jsp"/>        
        <%}%>
    </body>
</html>
