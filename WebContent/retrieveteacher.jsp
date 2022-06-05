<%@page import="com.academy.dao.TeacherDAO"%>
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
<form action="insertinterfaceteacher.jsp">
	<input type="submit" value="Add New Teacher">
	</form>
<h1>Teachers List</h1>
	<%
		TeacherDAO dao=new TeacherDAO();
		List<Teacher> list=dao.getallteachers();
	%>
	<table border="1"> 
	<tr><th>Id</th><th>Firstname</th><th>Lastname</th><th>DOB</th><th>Address</th><th>Phone</th><th>Designation</th><th colspan="2">Action</th></tr>
	<%for(Teacher ss:list){ %>
		<tr><td><%=ss.getId() %></td><td><%=ss.getFirstname() %></td><td><%=ss.getLastname()%></td><td><%=ss.getDob()%></td><td><%=ss.getAddress()%></td><td><%=ss.getPhone()%></td><td><%=ss.getDesignation()%></td><td><a href="editteacher.jsp">edit</a></td><td><a href="deleteinterfaceteacher.jsp">delete</a></td></tr>
	<%}%>
	</table>
	
<br>
<form action="profile.jsp">
<input type="submit" value="Home Page">
</form>
</body>
</html>