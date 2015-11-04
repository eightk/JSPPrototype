<%-- 
    Document   : smartupload_demo01
    Created on : Nov 1, 2015, 7:10:39 PM
    Author     : hp
--%>

<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smart Upload Demo jsp</title>
    </head>
    <body>
        <h1>Smart Upload Demo jsp</h1>
        <%
            SmartUpload smart = new SmartUpload();
            System.out.println(pageContext.getServletContext().getRealPath("").toString());
            smart.setCharset("UTF-8");
            smart.initialize(pageContext);
            smart.upload();
            smart.save("D:/Devel/repositories/MyProject/FileUpload/build/web/upload");
        %>
    </body>
</html>
