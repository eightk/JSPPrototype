<%-- 
    Document   : datasource
    Created on : Nov 5, 2015, 9:12:11 PM
    Author     : hp
--%>

<%@page import="javax.naming.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data source</title>
    </head>
    <body>
        <h1>Data source</h1>
        <%
            String DSNAME="java:comp/env/jdbc/datasource";
            Context ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup(DSNAME);
            Connection conn = ds.getConnection();
        %>
        <%=conn%>
        <%
        conn.close();
        %>
    </body>
</html>
