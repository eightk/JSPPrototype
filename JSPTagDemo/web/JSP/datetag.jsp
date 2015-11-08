<%-- 
    Document   : datetag
    Created on : Nov 7, 2015, 12:53:31 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="mytag" uri = "date_tag" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>date tag</title>
    </head>
    <body>
        <h1>date tag</h1>
        
        <form action="datetag.jsp" method="post">
            format: <input type="text" name="fmt"/><br/>
            <%request.setAttribute("fmt",request.getParameter("fmt"));%>
            <input type="submit" value="submit"/><input type="reset" value="reset"/>
        </form>
            <h4>Because rtexprvalue in tld file set to true so can use jsp to set the parameter, otherwise cannot.</h4>
        <h2><mytag:date format="${fmt}"/></h2>
    </body>
</html>
