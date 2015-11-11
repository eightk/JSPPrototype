<%-- 
    Document   : set_bean
    Created on : Nov 9, 2015, 7:31:59 PM
    Author     : hp
--%>

<%@page import="jstl.demo.vo.SimpleInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:set to javabean demo</title>
    </head>
    <body>
        <h1>c:set to javabean demo</h1>
        <%
            SimpleInfo si = new SimpleInfo();
            request.setAttribute("simple", si);
        %>
        <c:set value="info content" target="${simple}" property="content"/>
        <h3>attribute value: ${simple.content}</h3>
    </body>
</html>
