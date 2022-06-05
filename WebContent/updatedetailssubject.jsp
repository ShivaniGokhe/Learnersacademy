<%@page import="com.academy.dao.SubjectDAO"%>
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
		Subject s=new Subject();
		s.setId(request.getParameter("id"));
		s.setName(request.getParameter("name"));
		SubjectDAO dao=new SubjectDAO();
		if(dao.update(s)>0){
			out.print("New details have been updated successfully");
		}
		else{
			out.print("Unable to update the details");
		}
	
	%>
	<br>
	<form action="retrievesubject.jsp">
		<input type="submit" value="Subjects List">
	</form>
</body>
</html>