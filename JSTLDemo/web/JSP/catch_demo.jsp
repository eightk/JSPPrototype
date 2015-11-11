<%-- 
    Document   : catch_demo
    Created on : Nov 9, 2015, 7:38:31 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:catch demo</title>
    </head>
    <body>
        <h1>c:catch demo</h1>
        <c:catch var="errmsg">
            <%
                int result = 10/0;
            %>
        </c:catch>
        <h3>Error Message: ${errmsg} </h3>
    </body>
</html>
