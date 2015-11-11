<%-- 
    Document   : send_param
    Created on : Nov 5, 2015, 8:08:30 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Param</title>
    </head>
    <body>
        <h1>Send Param</h1>
        <form action="get_param.jsp" method="post">
            user name: <input type="text" name="username"/>
            <input type="checkbox" name ="ary" value="pork"/>Pork<br/>
            <input type="checkbox" name ="ary" value="beef"/>Beef<br/>
            <input type="checkbox" name ="ary" value="Chickent"/>Chicken<br/>
            <input type="submit" value="submit"/>
        </form>
    </body>
</html>
