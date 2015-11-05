<%-- 
    Document   : session_bound
    Created on : Nov 4, 2015, 9:08:58 PM
    Author     : hp
--%>

<%@page import="servlet.demo.listener.LoginUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session binding Listener demo</title>
    </head>
    <body>
        <h1>Session binding Listener demo</h1>
        <h3>do the valueBound when set the listener to attribute, do the valueUnbound when remove it. But this one doesn't need to put config into web.xml</h3>>
        <%
            LoginUser user = new LoginUser("Richard");
            session.setAttribute("info", user);
        %>
        <%=session.getAttribute("info")%>
        
        <%session.removeAttribute("info");%>
    </body>
</html>
