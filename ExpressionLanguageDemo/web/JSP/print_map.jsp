<%-- 
    Document   : print_map
    Created on : Nov 5, 2015, 8:33:41 PM
    Author     : hp
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>print map</title>
    </head>
    <body>
        <h1>print map</h1>
        <%
            Map map = new HashMap();
            map.put("name1", "value1");
            map.put("name2", "value2");
            map.put("name3", "value3");
            request.setAttribute("mapinfo", map);
        %>
        ${mapinfo.name1}<br/>
        ${mapinfo["name2"]}<br/>
        ${mapinfo.name3}<br/>
    </body>
</html>
