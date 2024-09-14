<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Hello world <br />
	<%  
		String name = (String) request.getAttribute("nameString");
	%>
	<p> 
		<%= name %>
	</p>

	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		String urlString = "jdbc:mysql://localhost:3306/test";
		String usernameString = "root";
		String passwordString = "Qweasd123!";
		Connection connection = DriverManager.getConnection(urlString, usernameString, passwordString);
		Statement statement = connection.createStatement();
		String query = "select * from student where id=1";
		ResultSet result = statement.executeQuery(query);
		
		  if (result.next()) {
	            int studentId = result.getInt(1);
	            String studentName = result.getString(2);
	%>
	            Student Id: <%= studentId %> with name: <%= studentName %><br>
	<%
	        } else {
	%>
	            No student found with id 1.
	<%
	        }
		// Close the resources
		result.close();
		statement.close();
		connection.close();
	%>
	



</body>
</html>