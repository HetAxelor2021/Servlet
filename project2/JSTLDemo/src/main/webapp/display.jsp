<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    
     --%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${students}" var="s">
		${s} <br/>	

	<%--
	
	<%
		String name= request.getAttribute("label").toString();
		out.println(name);
	
	%>
	${label}
	
	${student} <br>
	 --%>



	<%
		
	%>
	
	 
	<br >
	
<!-- 
	<c:set ></c:set>
	
	<c:import url="http://www.telusko.com/online.htm"></c:import>
	
	<c:out value="hello world" />
 -->	
	
	
</body>
</html>