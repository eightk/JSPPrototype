<%-- 
    Document   : import_demo
    Created on : Nov 10, 2015, 6:54:38 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:import demo</title>
    </head>
    <body>
        <h1>c:import demo</h1>
        <c:import url="out_Demo.jsp" charEncoding="UTF_8">
            <c:param name="ref" value="ref value"/>
        </c:import>
    </body>
</html>
