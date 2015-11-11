<%-- 
    Document   : user_page
    Created on : Nov 10, 2015, 10:51:07 PM
    Author     : hp
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "sql" uri="sql" %>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management Page</title>
    </head>
    <body>        
    <center>
        <h1>User Management</h1>
        <sql:setDataSource dataSource="jdbc/jstldatasource" var="datasource"/>
        <form action="add_query.jsp" method="post">
            <table border = "1">
                <tr><td>User Name: </td><td><input type="text" name="username"/></td></tr>
                <tr><td>Password: </td><td><input type="password" name="password"/></td></tr>
                <tr><td>Email: </td><td><input type="text" name="email"/></td></tr>
                <tr><td>First Name: </td><td><input type="text" name="firstname"/></td></tr>
                <tr><td>Last Name: </td><td><input type="text" name="lastname"/></td></tr>
                <tr><td>Age: </td><td><input type="number" name="age"/></td></tr>
                <tr><td>Level: </td><td><input type="number" name="level"/></td></tr>
            </table>
            <input type="hidden" name="datasource" value="${datasource}"/>
            <input type="submit" value="add"/>
            <input type="reset" value="reset"/>
        </form>
        <c:import url="datasource.jsp"/>
    </center>
</body>
</html>
