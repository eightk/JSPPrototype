<%-- 
    Document   : add_query
    Created on : Nov 10, 2015, 10:05:20 PM
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
        <title>add query</title>
    </head>
    <body>
        <sql:setDataSource dataSource="jdbc/jstldatasource" var="datasource"/>
        <c:catch var="errmsg">
            <sql:transaction isolation="serializable" dataSource="${datasource}">
                <sql:update var="result">
                    INSERT INTO user values(?,?,?,?,?,?,?,?);
                    <sql:param value="${param.username}"/>
                    <sql:param value="${param.password}"/>
                    <sql:param value="${param.email}"/>
                    <sql:param value="${param.firstname}"/>
                    <sql:param value="${param.lastname}"/>
                    <sql:param value="${param.age}"/>
                    <sql:dateParam value="${param.createdate}" type="date"/>
                    <sql:param value="${param.level}"/>
                </sql:update>
            </sql:transaction>
        </c:catch>
        <c:if test="${errmsg!=null}" var="res1">
            <h3>Error Message: ${errmsg} </h3>
        </c:if>
        <c:if test="${errmsg==null}" var="res1">
            <h3>Successfully insert the record to the user table.</h3>
        </c:if>
        <c:url value="http://localhost/jstldemo/JSP/user_page.jsp" var="urlinfo"/>
        <a href="${urlinfo}">main page</a>
    </body>
</html>
