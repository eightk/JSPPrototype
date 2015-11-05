<%-- 
    Document   : list
    Created on : Nov 4, 2015, 10:46:08 PM
    Author     : hp
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online user Demo list</title>
    </head>
    <body>
        <h1>Online user Demo list</h1>
        <%
            Set all = (Set) this.getServletContext().getAttribute("online");
            Iterator iter = all.iterator();
            while (iter.hasNext()) {
        %>
        <%=iter.next()%>
        <%
            }
        %>

    </body>
</html>
