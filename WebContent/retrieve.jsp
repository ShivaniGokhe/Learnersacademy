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
<form action="insertinterface.jsp">
	<input type="submit" value="Add New Student">
	</form>
	<h1>Students List</h1>
	<%
		StudentDAO dao=new StudentDAO();
		List<Student> list=dao.getallstudents();
	%>
	<table border="1"> 
	<tr><th>Id</th><th>Firstname</th><th>Lastname</th><th>DOB</th><th>Address</th><th>Phone</th><th>Class</th><th colspan="2">Action</th></tr>
	<%for(Student ss:list){ %>
		<tr><td><%=ss.getId() %></td><td><%=ss.getFirstname() %></td><td><%=ss.getLastname()%></td><td><%=ss.getDob()%></td><td><%=ss.getAddress()%></td><td><%=ss.getPhone()%></td><td><%=ss.getClasses()%></td><td><a href="edit.jsp">edit</a></td><td><a href="delete.jsp">delete</a></td></tr>
	<%}%>
	</table>

<br>
<form action="profile.jsp">
<input type="submit" value="Home Page">
</form>
</body>
</html>