<%-- 
    Document   : url_demo
    Created on : Nov 10, 2015, 7:06:19 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:url demo</title>
    </head>
    <body>
        <h1>c:url demo</h1>
        <c:url value="http://localhost/jstldemo/JSP/out_Demo.jsp" var="urlinfo">
            <c:param name="test" value="test value"/>
            <c:param name="ref" value="ref value"/>            
        </c:url>        
        <a href="${urlinfo}">${urlinfo}</a>
    </body>
</html>
