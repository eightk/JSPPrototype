<%-- 
    Document   : smartupload_demo01
    Created on : Nov 1, 2015, 7:10:39 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@page import="fileUpload.demo.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smart Upload Demo 02 jsp</title>
    </head>
    <body>
        <h1>Smart Upload Demo 02 jsp</h1>
        <%
            SmartUpload smart = new SmartUpload();
            smart.setCharset("UTF-8");
            smart.initialize(pageContext);
            smart.upload();
            String name = smart.getRequest().getParameter("uname");
            IPTimeStamp its = new IPTimeStamp(request.getRemoteAddr());
            String ext = smart.getFiles().getFile(0).getFileExt();
            String fileName = its.getIPTimeRand() + "." + ext;
            String filePath = "D:/Devel/repositories/MyProject/FileUpload/build/web/upload" + java.io.File.separator + fileName;
            smart.getFiles().getFile(0).saveAs(filePath);
        %>
        <h2>Since the request is wrapped by the enctype="multipart/form-data" we can only get the info through smart upload </h2>
        <h2>Name: <%=name%> </h2>
        <h2>Cannot access by request: <%=request.getParameter("uname")%> </h2>
        <img src="<%=filePath%>"/>
    </body>
</html>
