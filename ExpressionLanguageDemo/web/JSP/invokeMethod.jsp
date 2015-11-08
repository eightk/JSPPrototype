<%-- 
    Document   : invokeMethod
    Created on : Nov 5, 2015, 7:53:43 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoke method</title>
    </head>
    <body>
        <h1>Directly use pageContext to get request, session, application data</h1>
        <h3>IP Address: ${pageContext.request.remoteAddr}</h3>
        <h3>session id: ${pageContext.session.id}</h3>
        <h3>Is new: ${pageContext.session['new']}</h3>
        <h4><font color = 'red'>For boolean value we cannot use session.new, must change to session['new'] </font></h4>
        <h3>createion Time: ${pageContext.session.creationTime}</h3>
        <h3>Servlet Context Path: ${pageContext.servletContext.contextPath}</h3>
    </body>
</html>
