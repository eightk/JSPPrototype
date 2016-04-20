<%-- 
    Document   : choose_demo
    Created on : Nov 9, 2015, 8:00:21 PM
    Author     : hp
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:choose c:when c:otherwise demo</title>
    </head>
    <body>
        <h1>c:choose c:when c:otherwise demo</h1>
        <%
            List books = new ArrayList();
            books.clear();
            request.setAttribute("books", books);
            response.addHeader("name", "t");
            response.addHeader("name", "t2");
            response.setHeader("name", "t3");
            response.addHeader("name", "t");
        %>
        <%=response.getHeaders("name").size()%>
        <c:choose>
            <c:when test="${not empty books}">
                <h3>BOOKS ARE:</h3>
                <c:forEach var="book" items = "${books}">
                    <br/> * ${book}
                </c:forEach>
            </c:when>
            <c:otherwise>
                <h3>no books</h3>
            </c:otherwise>
        </c:choose>
    </body>
</html>
