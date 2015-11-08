<%-- 
    Document   : print_vo
    Created on : Nov 5, 2015, 8:39:29 PM
    Author     : hp
--%>

<%@page import="eldemo.vo.Dept"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Print vo</title>
    </head>
    <body>
        <h1>Print vo</h1>
        <%
            Dept dept = new Dept();
            dept.setDeptno(1);
            dept.setDname("Farmer's market");
            dept.setLoc("Market St. West");
            request.setAttribute("deptinfo", dept);
        %>
        ${deptinfo.deptno}<br/>
        ${deptinfo.dname}<br/>
        ${deptinfo.loc}<br/>
        <h3>Directly use dept object doesn't work</h3>
        ${dept.deptno}<br/>
        ${dept.dname}<br/>
        ${dept.loc}<br/>
        
        
    </body>
</html>
