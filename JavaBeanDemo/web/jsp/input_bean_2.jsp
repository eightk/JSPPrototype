<%-- 
    Document   : input_bean
    Created on : Oct 28, 2015, 10:30:11 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="simple" scope="page" class="javabean.basic.demo.SimpleJavaBean"/>
<jsp:setProperty name="simple" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Input Bean 2 jsp</title>
    </head>
    <body>
        <h1>Input Bean 2 jsp</h1>
        <h2>Use jsp:setProperty with auto matching property</h2>
        <h3>name: <%=simple.getName()%> </h3>
        <h3>age: <%=simple.getAge()%> </h3>
    </body>
</html>
