<%-- 
    Document   : print_collection
    Created on : Nov 5, 2015, 8:25:43 PM
    Author     : hp
--%>

<%@page import="java.util.TreeSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>print collection</title>
    </head>
    <body>
        <h1>print collection</h1>
        <%
            String[] array = {"arrayvalue1","arrayvalue2","arrayvalue3"};
            List list = new ArrayList();
            list.add("list1");
            list.add("list2");
            list.add("list3");
            Set set = new TreeSet();
            set.add("set1");
            set.add("set2");
            set.add("set3");
            request.setAttribute("arrayinfo", array);
            request.setAttribute("listinfo", list);
            request.setAttribute("setinfo", set);
        %>
            ${arrayinfo[0]}<br/>
            ${listinfo[1]}<br/>
            
            Set cannot use this one.<br/>
    </body>
</html>
