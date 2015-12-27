<%-- 
    Document   : test3
    Created on : Dec 13, 2015, 10:14:54 AM
    Author     : hp
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%@tag body-content="tagdependent"%>

<%@ attribute name="fontColor" required="true" %>

<%-- any content can be specified here e.g.: --%>
<h3><em><strong><font color="${fontColor}"><jsp:doBody/></font></strong></em></h3><br/>