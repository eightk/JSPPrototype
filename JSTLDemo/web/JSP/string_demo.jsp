<%-- 
    Document   : string_demo
    Created on : Nov 11, 2015, 9:25:38 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "fn" uri="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>fn tld demo</title>
    </head>
    <body>
        <h1>fn tld demo</h1>
        <%
            pageContext.setAttribute("str", "this is a demo String, it is not useful.");
        %>
        String is: ${str} <br/>
        find string: ${fn:contains(str, "string")} <br/>
        find ignore case string: ${fn:containsIgnoreCase(str, "string")} <br/>
        find start: ${fn:startsWith(str, "this")} <br/>
        find end: ${fn:endsWith(str, "useful")} <br/>
        find index: ${fn:indexOf(str, ",")} <br/>
        
        replace: ${fn:replace(str, "not", "very")} <br/>
        substring: ${fn:substring(str, 0, 21)} <br/> 
        split: ${fn:split(str, " ")[1]} <br/>
    </body>
</html>
