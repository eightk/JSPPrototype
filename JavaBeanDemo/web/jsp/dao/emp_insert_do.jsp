<%-- 
    Document   : emp_insert_do
    Created on : Nov 1, 2015, 4:58:06 PM
    Author     : hp
--%>

<%@page import="javabean.dao.demo.dao.DAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "javabean.dao.demo.vo.*"%>
<%@page import = "java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP with DAO do</title>
    </head>
    <body>
        <h1>JSP with DAO do</h1>

        <%
            Emp emp = new Emp();
            emp.setEmpno(Integer.parseInt(request.getParameter("empno")));
            emp.setEname(request.getParameter("ename"));
            emp.setJob(request.getParameter("job"));
            emp.setHiredate(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("hiredate")));
            emp.setSal(Double.parseDouble(request.getParameter("sal")));
            emp.setComm(Double.parseDouble(request.getParameter("comm")));
            emp.setMgr(Integer.parseInt(request.getParameter("mgr")));
            if (request.getParameter("deptno") != null && request.getParameter("deptno") != "") {
                emp.setDeptno(Integer.parseInt(request.getParameter("deptno")));
            }
            try {
                if (DAOFactory.getIEmpDAOInstance().doCreate(emp)) {
        %><h3>Success!</h3><%
                        } else {
        %><h3>Failed!</h3><%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
        %>
    </body>
</html>
