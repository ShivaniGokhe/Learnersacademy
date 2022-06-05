<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Dashboard</h1>
<h2>Hey!!</h2>
<h3>Welcome to Learners Academy</h3>

<table>
<tr>
	<td><form action="retrieve.jsp">
	<input type="submit" value="Student List">
	</form></td>
</tr>
<tr>
	<td><form action="retrievesubject.jsp">
	<input type="submit" value="Subject List">
	</form></td>
</tr>

<tr>
	<td><form action="retrieveteacher.jsp">
	<input type="submit" value="Teacher List">
	</form></td>
</tr>

<tr>
	<td><form action="retrieveclasses.jsp">
	<input type="submit" value="Class List">
	</form></td>
</tr>
</table>
</body>
</html>