<%@page import="com.academy.dao.StudentDAO"%>
<%@page import="com.academy.pojo.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Student deletion</h1>
	<form action="deleteinterface.jsp">
	<table><tr><td>Id :</td><td><input type="text" name="id" required></td></tr></table>
		
		<br>
		
		<input type="submit" value="delete">
	</form>

</body>
</html>