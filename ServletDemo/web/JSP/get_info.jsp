<%-- 
    Document   : get_info
    Created on : Nov 2, 2015, 11:07:27 PM
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
        <h1>Get info from Servlet redirect</h1>
        Username: <%=session.getAttribute("username")%>
        <h3>If it is a client redirect then it can only get session info but not request info,  <br/>
            If it is a server redirect then it can get request as well.</h3>
        Info: <%=request.getAttribute("info")%>
    </body>
</html>
