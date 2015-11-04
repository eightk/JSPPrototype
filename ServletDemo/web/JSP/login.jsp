<%-- 
    Document   : login
    Created on : Nov 3, 2015, 9:34:20 PM
    Author     : hp
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC Login Page</title>
    </head>
    <script language = "JavaScript">
        function validate(f) {
            if (!/^\w{5,15}$/.test(f.username.value)) {
                alert("User name length must between 5 and 15");
                f.username.focue();
                return false;
            }
            if (!/^\w{5,15}$/.test(f.username.value)) {
                alert("Password length must between 5 and 15");
                f.password.focue();
                return false;
            }
            return true;
        }
    </script>
    <body>
        <h1>MVC Login Page</h1>
        <%
            List<String> info = (List<String>) request.getAttribute("info");
            if (info != null) {
                Iterator<String> iter = info.iterator();
                while (iter.hasNext()) {
        %>
        <h4><%=iter.next()%></h4><%
                }
            }
        %>
        <form action="LoginServlet" method = "post" onsubmit="return validate(this)">
            user name: <input type="text" name = "username"/> <br/>
            Password: <input type="password" name="password"/><br/>
            <input type = "submit" value="submit"/><input type="reset" value="reset"/>
        </form>
    </body>
</html>
