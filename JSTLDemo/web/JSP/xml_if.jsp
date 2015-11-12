<%-- 
    Document   : xml_if
    Created on : Nov 11, 2015, 9:10:40 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<%@taglib prefix = "x" uri="x" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>x:if demo</title>
    </head>
    <body>
        <h1>x:if demo</h1>
        <c:import url="/XML/03.xml" var="xml"/>
        <x:parse doc="${xml}" var="result"/>
        <x:if select="$result//name/@id='dish1'">
            <h3>There is attribute id for the first name with value dish1.</h3>
        </x:if>
        <x:if select="$result//name[2]='name2'" var="if_result">
            <h3>the second name is name2.</h3>
        </x:if>
        ${if_result}
    </body>
</html>
