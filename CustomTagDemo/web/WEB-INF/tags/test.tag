<%-- 
    Document   : test
    Created on : Dec 13, 2015, 9:56:00 AM
    Author     : hp
--%>

<%@ tag description="This is a tag for testing" pageEncoding="UTF-8"%>
<%@ attribute name="subTitle" required="true" rtexprvalue="true" %>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%request.setAttribute("message", "test message");%>

<%-- any content can be specified here e.g.: --%>
<h2>${message}</h2><br/>
Subtitle: <em><strong>${subTitle}</strong></em> <br/>