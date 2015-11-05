<%-- 
    Document   : request_attribute_listener
    Created on : Nov 4, 2015, 10:30:22 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Attribute Listener Demo</title>
    </head>
    <body>
        <h1>Request Attribute Listener Demo</h1>
        <%request.setAttribute("info", "add attribute 1");%>
        <h2><%=request.getAttribute("info")%></h2>
        <%request.setAttribute("info", "replace attribute 1");%>
        <h2><%=request.getAttribute("info")%></h2>
        <%request.removeAttribute("info");%>
        <h2><%=request.getAttribute("info")%></h2>

    </body>
</html>
