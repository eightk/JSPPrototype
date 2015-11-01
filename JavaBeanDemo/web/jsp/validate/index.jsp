<%-- 
    Document   : index
    Created on : Oct 31, 2015, 10:49:01 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <jsp:useBean id="reg" scope="session" class="javabean.basic.demo.Register"/>
    <body>
        <h1>Index for validate Demo</h1>
        
        <form action="check.jsp" method="post"> 
            user name: <input type="text" name="name" value = "<jsp:getProperty name="reg" property="name"/>"/><br/>
            <font color = "red">error:<%=reg.getErrorMsg("errname")%></font> <br/>
            email: <input type="text" name="email" value = "<jsp:getProperty name="reg" property="email"/>"/><br/>
            <font color = "red">error:<%=reg.getErrorMsg("erremail")%></font> <br/>
            age: <input type="text" name="age" value = "<jsp:getProperty name="reg" property="age"/>"/><br/>
            <font color = "red">error:<%=reg.getErrorMsg("errage")%></font> <br/>
            <input type="submit" value="submit"/><input type="reset" value="reset"/>
        </form>
       
    </body>
</html>
