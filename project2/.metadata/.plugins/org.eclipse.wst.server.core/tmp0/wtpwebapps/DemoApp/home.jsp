<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
    
<%@ page import = "java.util.ArrayList" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
--%> 

	<%
	
		int k = 9/0;
			
	
	%> 
	<%
		pageContext.setAttribute("name", "hetul", PageContext.SESSION_SCOPE);
		
	%>




	<%!
		int coef = 8;
	%>
	<h1> hello world! </h1>
	
	<% 
		int i=9;
		out.println(7+5);
	%>
	my fav number is : <%= coef %>
	
</body>
</html>