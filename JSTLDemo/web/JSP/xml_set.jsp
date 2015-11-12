<%-- 
    Document   : xml_set
    Created on : Nov 11, 2015, 9:03:37 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<%@taglib prefix = "x" uri="x" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>x:set demo</title>
    </head>
    <body>
        <h1>x:set demo</h1>
        <c:import url="/XML/03.xml" var="xml"/>
        <x:parse var="result" doc="${xml}"/>
        <x:set select="$result/foodlist/food[3]" var="desc3" scope="page"/>
        <h3>name: <x:out select="$desc3/name"/></h3><br/>
        <h3>price <x:out select="$desc3/price"/></h3><br/>
        <h3>description: <x:out select="$desc3/description"/></h3><br/>
        <h3>calories: <x:out select="$desc3/calories"/></h3><br/>
    </body>
</html>
