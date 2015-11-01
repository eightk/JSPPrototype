<%-- 
    Document   : emp_insert
    Created on : Nov 1, 2015, 4:51:31 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP use DAO</title>
    </head>
    <body>
        <h1>JSP with DAO</h1>
        <form action = "emp_insert_do.jsp" method = "post">
            Employee number: <input type = "number" name = "empno"/><br/>
            Employee name <input type = "text" name = "ename"/><br/>
            Job: <input type = "text" name = "job"/><br/>
            Hire date: <input type = "date" name = "hiredate"/><br/>
            Salary: <input type = "number" step = "0.01" name = "sal"/><br/>
            Bonus: <input type = "number" step = "0.01" name = "comm"/><br/>
            Manager: <input type = "number" name = "mgr"/><br/>
            Department: <input type = "number" name = "deptno"/><br/>
            <input type = "submit" value = "submit"/><input type = "reset" value = "reset"/><br/>
        </form>
    </body>
</html>
