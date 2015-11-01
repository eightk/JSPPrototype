<%-- 
    Document   : emp_list
    Created on : Nov 1, 2015, 5:14:19 PM
    Author     : hp
--%>

<%@page import="javabean.dao.demo.dao.DAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "javabean.dao.demo.vo.*"%>
<%@page import = "java.text.*"%>
<%@page import = "java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP with DAO list</title>
    </head>
    <body>
        <h1>JSP with DAO list</h1>
        <%
            try {
                List<Emp> all = DAOFactory.getIEmpDAOInstance().loadAll();
                Iterator<Emp> iter = all.iterator();
                %>
        <center>
            <table border = "1" width="80%">
                <tr>
                    <td>Employee number</td>
                    <td>Employee name</td>
                    <td>Employee job</td>
                    <td>Hire date</td>                        
                    <td>Employee salary</td>
                    <td>Employee bonus</td>
                    <td>Employee manager</td>
                    <td>Employee department</td>
                </tr>
        <%      
                while(iter.hasNext()) {
                    Emp emp = iter.next();
                    %>
                <tr>
                    <td><%=emp.getEmpno()%></td>
                    <td><%=emp.getEname()%></td>
                    <td><%=emp.getJob()%></td>
                    <td><%=emp.getHiredate()%></td>
                    <td><%=emp.getSal()%></td>
                    <td><%=emp.getComm()%></td>
                    <td><%=emp.getMgr()%></td>
                    <td><%=emp.getDeptno()%></td>
                </tr>
                
                <%
                }
            } catch (Exception e) {
                %><%=e.getMessage()%><%
            }
        %>
            </table>
        </center>
    </body>
</html>
