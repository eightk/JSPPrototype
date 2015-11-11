<%-- 
    Document   : get_param
    Created on : Nov 5, 2015, 8:10:58 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>get param</title>
    </head>
    <body>
        <h1>Get Param</h1>
        <h3>${param.username}</h3>
        <h3>${paramValues.ary[0]}</h3>
        <h3>${paramValues.ary[1]}</h3>
        <h3>${paramValues.ary[2]}</h3>
    </body>
</html>
