<%-- 
    Document   : bodyiteratetag
    Created on : Nov 7, 2015, 11:46:29 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@taglib prefix="mytag" uri="demo_tag"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Body Iterate Tag</title>
    </head>
    <body>
        <h1>Body Iterate Tag</h1>
        <%
            List<String> list = new ArrayList();
            list.add("value 1");
            list.add("value 2");
            list.add("value 3");
            list.add("value 4");
            request.setAttribute("list", list);
        %>
        <!--the url red mark here is a netbean bug, in eclipse they fix it but not in netbean, but the code works-->
        <mytag:bodyiterate id = "url" name="list" scope="request">
            <h3><%=url%></h3>
        </mytag:bodyiterate>
    </body>
</html>
