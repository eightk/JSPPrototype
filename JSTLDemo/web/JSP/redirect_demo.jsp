<%-- 
    Document   : redirect_demo
    Created on : Nov 10, 2015, 7:12:49 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:redirect demo</title>
    </head>
    <body>
        <h1>c:redirect demo</h1>
        <c:redirect url="out_Demo.jsp">
            <c:param name="test" value="redirect_demo.jsp"/>
        </c:redirect>
    </body>
</html>
