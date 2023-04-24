<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style1.css">
</head>
<body>

<%
Class.forName("oracle.jdbc.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
Statement stmt = con.createStatement();

String sql = "select * from tmp_student_202105";
ResultSet rs = stmt.executeQuery(sql);
%>
	<%@include file="header.jsp" %>
	<%@include file="nav.jsp" %>
	<section>
		<h3>학생현황</h3>
			<table border="1">
				<tr>
					<th>학번</th>
					<th>이름</th>
					
				</tr>
				<%
					while(rs.next()) {
				%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
				</tr>
				
				<%} 
				rs.close();
				stmt.close();
				con.close();
				%>
			</table>
	</section>
	<%@include file="footer.jsp" %>
	</body>	
</html>