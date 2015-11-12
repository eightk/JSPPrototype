<%-- 
    Document   : xml_choose
    Created on : Nov 11, 2015, 9:15:59 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<%@taglib prefix = "x" uri="x" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>x:choose demo</title>
    </head>
    <body>
        <h1>x:choose demo</h1>
        <c:import url="/XML/03.xml" var="xml"/>
        <x:parse doc="${xml}" var="result"/>
        <x:choose>
            <x:when select="$result//name/@id='dish1'">
                the name with id dish1 is: <x:out select="$result//name"/>            
            </x:when>
            <x:otherwise>
                nothing happens here!
            </x:otherwise>
        </x:choose>
    </body>
</html>
