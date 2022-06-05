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
<%
		Student s=new Student();
		s.setId(request.getParameter("id"));
		s.setFirstname(request.getParameter("firstname"));
		s.setLastname(request.getParameter("lastname"));
		s.setDob(request.getParameter("dob"));
		s.setAddress(request.getParameter("address"));
		s.setPhone(request.getParameter("phone"));
		s.setClasses(request.getParameter("class"));
		StudentDAO dao=new StudentDAO();
		
		if(dao.update(s)>0){
			out.print("New details have been updated successfully");
		}
		else{
			out.print("Unable to update the details");
		}
	
	%>
	<br>
	<form action="retrieve.jsp">
		<input type="submit" value="Students List">
	</form>
</body>
</html>