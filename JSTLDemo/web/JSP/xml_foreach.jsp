<%-- 
    Document   : xml_foreach
    Created on : Nov 11, 2015, 9:20:14 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<%@taglib prefix = "x" uri="x" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>x:forEach demo</title>
    </head>
    <body>
        <h1>x:forEach demo</h1>
        <c:import url="/XML/03.xml" var="xml"/>
        <x:parse doc="${xml}" var="result"/>
        <x:forEach select="$result/foodlist/food" var="food">
            <x:out select="name"/> (<x:out select="name/@id"/>) <x:out select="description"/> <x:out select="price"/> <x:out select="calories"/>
            <br/>
        </x:forEach>
    </body>
</html>
