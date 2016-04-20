<%-- 
    Document   : test
    Created on : 21-Feb-2016, 6:51:35 PM
    Author     : huico
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>test</title>
    </head>
    <body>
        <%for (int i = 0; i<5; i++) {%>
            out.print(i);
        <%}%>
    </body>
</html>
