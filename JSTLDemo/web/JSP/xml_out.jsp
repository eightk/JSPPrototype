<%-- 
    Document   : xml_out
    Created on : Nov 11, 2015, 8:34:53 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<%@taglib prefix = "x" uri="x" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>x:out demo</title>
    </head>
    <body>
        <h1>x:out demo</h1>
        <c:import url="/XML/03.xml" var="xml"/>
        <x:parse var="result" doc="${xml}"/>
        $result/foodlist/food/name: <x:out select="$result/foodlist/food/name"/><br/>
        $result//price: <x:out select="$result//price"/><br/>
        $result//name/@id: <x:out select="$result//name/@id"/><br/>
    </body>
</html>
