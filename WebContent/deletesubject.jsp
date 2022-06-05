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
		Subject s = new Subject();
		s.setId(request.getParameter("id"));
		SubjectDAO dao= new SubjectDAO();
		int row=dao.delete(s);
		if(row>0){
			out.print("deletion is successfull");
		}
		else{
			out.print("deletion failed");
		}
	%>
	<br>
	<form action="retrievesubject.jsp">
		<input type="submit" value="getsubjects">
	</form>
</body>
</html>