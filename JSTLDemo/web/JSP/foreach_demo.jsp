<%-- 
    Document   : foreach_demo
    Created on : Nov 9, 2015, 8:06:39 PM
    Author     : hp
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>c:forEach demo</title>
    </head>
    <body>
        <h1>c:forEach demo</h1>
        <%
            String info[] = {"value1", "value2", "value3", "value4", "value5"};
            List list = new ArrayList();
            list.add("list1");
            list.add("list2");
            list.add("list3");
            list.add("list4");
            list.add("list5");
            Map map = new HashMap();
            map.put("key1", "val1");
            map.put("key2", "val2");
            map.put("key3", "val3");
            map.put("key4", "val4");
            map.put("key5", "val5");            
            pageContext.setAttribute("ref", info);
            pageContext.setAttribute("list", list);
            pageContext.setAttribute("map", map);
        %>
        <h3>print all: </h3>
        <c:forEach items="${ref}" var="mem">
            ${mem}
        </c:forEach>
        <h3>print value with gap 2: </h3>
        <c:forEach items="${ref}" var="mem" step="2">
            ${mem}
        </c:forEach>
        <h3>print first two values: </h3>
        <c:forEach items="${ref}" var="mem" begin="0" end="1">
            ${mem}
        </c:forEach>      
        <h3>print first two values from list: </h3>
        <c:forEach items="${list}" var="mem" begin="0" end="1">
            ${mem}
        </c:forEach>       
        <h3>print first two values from map: </h3>
        <c:forEach items="${map}" var="mem" begin="0" end="4">
            ${mem.key} --> ${mem.value}<br/>
        </c:forEach>  
    </body>
</html>
