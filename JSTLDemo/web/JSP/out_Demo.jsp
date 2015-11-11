<%-- 
    Document   : out_Demo
    Created on : Nov 9, 2015, 7:23:38 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:out demo</title>
    </head>
    <body>
        <%
            pageContext.setAttribute("info", "info value");
            String param = request.getParameter("test");
            pageContext.setAttribute("test", param);
            String ref = request.getParameter("ref");
            pageContext.setAttribute("ref", ref);
        %>
        <h1>c:out demo</h1>
        <h3>Attribute Exists: <c:out value="${info}"/></h3>
        <h3>Attribute NOT Exists: <c:out value="${ref}" default="no such attribute"/></h3>
        <h3>Attribute NOT Exists: <c:out value="${ref}">no such attribute</c:out></h3>
        <h3>Parameter: <c:out value="${test}"/></h3>
    </body>
</html>
