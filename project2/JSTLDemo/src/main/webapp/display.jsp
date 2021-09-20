<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    
     --%>
	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<sql:setDataSource var="db" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost:5433/mario" user="axelor" password="axelor" />

	<sql:query var="rs" dataSource="${db}">select * from gadgets</sql:query>
	
	<c:forEach items="${rs.rows }" var="row">
		<c:out value="${gadget.gid }" ></c:out> :
		<c:out value="${gadget.gname }" ></c:out> :
		<c:out value="${gadget.price }" ></c:out>
	</c:forEach>
	

	<%--
	<c:forEach items="${students}" var="s">
		${s.name} <br/>	
	</c:forEach>
	
	<%
		String name= request.getAttribute("label").toString();
		out.println(name);
	
	%>
	${label}
	
	${student} <br>
	 --%>


	 
	<br >
	
<!-- 
	<c:set ></c:set>
	
	<c:import url="http://www.telusko.com/online.htm"></c:import>
	
	<c:out value="hello world" />
 -->	
	
	
</body>
</html>