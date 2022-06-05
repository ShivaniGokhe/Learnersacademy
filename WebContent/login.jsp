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
String username=request.getParameter("username");
String password =request.getParameter("password");
if(username.equals(password))
{
	out.println("Login sucess!");
%>  <br>
	<br>
	<form action="profile.jsp">
	<input type="submit" value="Go to Dashboard">
	</form>
<% 
}
else
{
	out.println("Incorrect Username or Password");
%>
	<br>
	<br>
	<form action="index.jsp">
	<input type="submit" value="Back to login page">
	</form>
	<%
}
%>
</body>
</html>