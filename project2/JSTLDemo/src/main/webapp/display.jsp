<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    
     --%>
	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:set var = "str" value="Navin Reddy is a java Trainer in mumbai" />

	<c:if test="${fn:endsWith(str,'Trainer') }">
		you are right buddy
	</c:if>
	
	${fn:toUpperCase(str)}

	<c:if test="${fn:contains(str,'jsp') }">
	</c:if>
	is there : ${fn:contains(str, 'Java')}

	index : ${fn:indexOf(str,"is") }

	
	Length : ${fn:length(str) }
 
 	<c:forEach items="${fn:split(str, ' ' )}" var="s">
 		<br>
 		${s }
 	</c:forEach>

	

	<%--

	<sql:setDataSource var="db" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost:5433/mario" user="axelor" password="axelor" />

	<sql:query var="rs" dataSource="${db}">select * from gadgets</sql:query>
	
	<c:forEach items="${rs.rows }" var="row">
		<c:out value="${gadget.gid }" ></c:out> :
		<c:out value="${gadget.gname }" ></c:out> :
		<c:out value="${gadget.price }" ></c:out>
	</c:forEach>
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