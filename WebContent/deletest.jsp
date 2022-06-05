<%@page import="com.academy.dao.*"%>
<%@page import="com.academy.pojo.*" %>
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
		St s = new St();
		s.setClasses(request.getParameter("class"));
		s.setSubject(request.getParameter("subject"));
		s.setTeacher(request.getParameter("teacher"));
		STDAO dao= new STDAO();
		int row=dao.delete(s);
		if(row>0){
			out.print("deletion is successfull");
		}
		else{
			out.print("deletion failed");
		}
	%>
	<br>
	<form action="retrieveclasses.jsp">
		<input type="submit" value="getclasses">
	</form>
</body>
</html>