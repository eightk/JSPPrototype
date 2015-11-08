<%-- 
    Document   : iteratetag
    Created on : Nov 7, 2015, 5:23:43 PM
    Author     : hp
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "mytag" uri="demo_tag"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iterate Tag</title>
    </head>
    <body>
        <h1>Iterate Tag</h1>

        <%
            List<String> list = new ArrayList();
            list.add("list value 1");
            list.add("list value 2");
            list.add("list value 3");
            request.setAttribute("list", list);
        %>

        <mytag:simpleiterate id = "url" name = "list" scope = "request">
            <h2>??? ${url}</h2><br/>
        </mytag:simpleiterate>

    </body>
</html>
