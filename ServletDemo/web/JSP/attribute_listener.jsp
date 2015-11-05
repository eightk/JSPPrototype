<%-- 
    Document   : attribute_listener.jsp
    Created on : Nov 4, 2015, 6:27:40 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Attribute Listener Demo</h1>
        <%this.getServletContext().setAttribute("info", "add attribute 1");%>
        <h2><%=this.getServletContext().getAttribute("info")%></h2>
        <%this.getServletContext().setAttribute("info", "replace attribute 1");%>
        <h2><%=this.getServletContext().getAttribute("info")%></h2>
        <%this.getServletContext().removeAttribute("info");%>
        <h2><%=this.getServletContext().getAttribute("info")%></h2>
    </body>
</html>
