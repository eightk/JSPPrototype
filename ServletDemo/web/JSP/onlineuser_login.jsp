<%-- 
    Document   : onlineuser_login
    Created on : Nov 4, 2015, 10:42:34 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online user Login Demo</title>
    </head>
    <body>
        <h1>Online user Login Demo</h1>
        <form action="onlineuser_login.jsp" method = "post">
            User name: <input type = "text" name="username"/><br/>
            <input type="submit" value="submit"/><br/>
        </form>
        <%
            String username = request.getParameter("username");
            if (!(username == null) || "".equals(username)) {
                session.setAttribute("username", username);
                response.sendRedirect("list.jsp");
            }
        %>
    </body>
</html>
