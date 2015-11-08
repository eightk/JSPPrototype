<%-- 
    Document   : attributetag
    Created on : Nov 7, 2015, 1:40:06 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "mytag" uri="demo_tag" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attribute Tag</title>
    </head>
    <body>
        <h1>Attribute Tag</h1>
        <%
            String scope = "session";
            session.setAttribute("name", "Richard");
        %>
        <mytag:present name="name" scope="<%=scope%>">
            <h2><%=scope%> attribute: ${sessionScope.name}</h2>
        </mytag:present>
        <mytag:present name="name" scope="request">
            <h2>request attribute: ${requestScope.name}</h2>
        </mytag:present>
    </body>
</html>
