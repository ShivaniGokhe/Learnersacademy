<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.academy.dao.*" %>
    <%@ page import="com.academy.pojo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
Subject s=new Subject();
s.setName(request.getParameter("name"));
SubjectDAO dao=new SubjectDAO();
int row=dao.insertsubject(s);
if(row>0){
	out.print("Subject have been added successfully");
}
else{
	out.print("insertion failed");
}
%>
<br>
<a href="insertinterfacesubject.jsp">insert more record</a>
<br>
<form action="retrievesubject.jsp">
<input type="submit"value="Subjects List">
</form>
</body>
</html>