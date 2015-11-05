<%-- 
    Document   : session_attribute_listener
    Created on : Nov 4, 2015, 8:56:11 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session Attribute Listener Demo</title>
    </head>
    <body>
        <h1>Session Attribute Listener Demo</h1>
        <%session.getServletContext().setAttribute("info", "add attribute 1");%>
        <h2><%=session.getServletContext().getAttribute("info")%></h2>
        <%session.getServletContext().setAttribute("info", "replace attribute 1");%>
        <h2><%=session.getServletContext().getAttribute("info")%></h2>
        <%session.getServletContext().removeAttribute("info");%>
        <h2><%=session.getServletContext().getAttribute("info")%></h2>
        <%session.invalidate();%>
    </body>
</html>
