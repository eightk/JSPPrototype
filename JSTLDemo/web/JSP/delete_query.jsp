<%-- 
    Document   : delete_query
    Created on : Nov 10, 2015, 10:50:53 PM
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
        <title>delete query</title>
    </head>
    <body>
        <sql:setDataSource dataSource="jdbc/jstldatasource" var="datasource"/>
        <c:catch var="errmsg">
            <sql:transaction isolation="serializable" dataSource="${datasource}">
                <sql:update var="result">
                    DELETE from user where username = '${param.username}';
                </sql:update>
            </sql:transaction>
        </c:catch>
        <c:if test="${errmsg!=null}" var="res1">
            <h3>Error Message: ${errmsg} </h3>
        </c:if>
        <c:if test="${errmsg==null}" var="res1">
            <h3>Successfully delete the record to the user table.</h3>
        </c:if>
        <c:url value="http://localhost/jstldemo/JSP/user_page.jsp" var="urlinfo"/>
        <a href="${urlinfo}">main page</a>
    </body>
</html>
