<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="value" type="java.lang.String" required="true" %>
<%
value = value.replace("<br>", "\r\n");
value = value.replace("&", "&amp");
value = value.replace("<", "&lt");
value = value.replace(" ", "&nbsp");
%>
<%= value %>
