<%-- 
    Document   : simpleTagSup
    Created on : Dec 13, 2015, 4:13:25 PM
    Author     : hp
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="custom.tag.model.Movie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="mytag" uri="/WEB-INF/tlds/simpleTagSupport" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Tag Support Test</title>
    </head>
    <body>
        <h1><mytag:simple1 /></h1><br/>
        <h2><mytag:simple2>
                Message is: ${message}
            </mytag:simple2></h2>
        <table>
            <mytag:simple4>
                <tr><td>${movie}</td></tr>
            </mytag:simple4>
        </table>
        <%
            List<Movie> movieList = new ArrayList();
            for (int i = 0; i < 10; i++) {
                Movie movie = new Movie();
                movie.setGenre("genre" + i);
                movie.setName("name" + i);
                movieList.add(movie);
            }
            request.setAttribute("movieList", movieList);
        %>
        <table border="1">
            <mytag:simple5 movieList="${movieList}">
                <tr><td>${movie.name}</td><td>${movie.genre}</td></tr>
            </mytag:simple5>
        </table>
        <jsp:include page="testSkipPageException.jsp"/>
        <h3>Showing Back to main Page</h3>
    </body>
</html>
