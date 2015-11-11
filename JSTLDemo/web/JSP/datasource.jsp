<%-- 
    Document   : datasource
    Created on : Nov 10, 2015, 8:32:20 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "sql" uri="sql" %>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sql:setDataSource demo</title>
    </head>
    <body>
        <sql:setDataSource dataSource="jdbc/jstldatasource" var="datasource"/>
        <sql:query var="result" dataSource="${datasource}">
            SELECT username, email, firstname, lastname from user;
        </sql:query>
        <table border = "1">
            <tr>
                <td>user name</td>
                <td>email</td>
                <td>first name</td>
                <td>last name</td>
                <td>action</td>
            </tr>
            <c:forEach items="${result.rows}" var="row">
                <tr>
                    <td>${row.username}</td>
                    <td>${row.email}</td>
                    <td>${row.firstname}</td>
                    <td>${row.lastname}</td>
                    <td>
                        <form action="delete_query.jsp" method="post">
                            <input type="hidden" name="username" value="${row.username}"/>
                            <input type="hidden" name="datasource" value="${datasource}"/>
                            <input type="submit" value="delete"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>  
        </table>
    </body>
</html>
