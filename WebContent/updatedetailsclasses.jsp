<%@page import="com.academy.dao.ClassesDAO"%>
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
		Classes s=new Classes();
		s.setId(request.getParameter("id"));
		s.setName(request.getParameter("name"));
		ClassesDAO dao=new ClassesDAO();
		if(dao.update(s)>0){
			out.print("New details have been updated successfully");
		}
		else{
			out.print("Unable to update the details");
		}
	
	%>
	<br>
	<form action="retrieveclasses.jsp">
		<input type="submit" value="Class List">
	</form>
</body>
</html>