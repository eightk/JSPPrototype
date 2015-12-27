<%-- 
    Document   : testImport
    Created on : Dec 13, 2015, 9:58:34 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "myTag" tagdir = "/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>test tag file import page</title>
    </head>
    <body>
        <myTag:test subTitle="This is subTitle"/>        
        <myTag:test2>
            This is about testing jsp:doBody! And body-content defaults to scriptless!!!
        </myTag:test2>
        <myTag:test3 fontColor="#660099">
            Tag body-content can still<br/> set to empty or tagdependent.
        </myTag:test3>
    </body>
</html>
