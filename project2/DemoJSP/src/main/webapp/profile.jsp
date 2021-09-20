<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	101 <br>
	Hetul <br>
	88 <br>
	
	<%
		String url= "jdbc:postgresql://localhost:5433/neon";
		String username="axelor";
		String password = "axelor";
		String sql = "select * from student where rollno=3";
		
		
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		rs.next();
		
		
		
	%>
	Rollno : <%= rs.getString(1) %> <br>
	
	Name : <%= rs.getString(3) %> <br>
	Marks : <%= rs.getString(2) %> <br>
</body>
</html>