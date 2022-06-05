<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Update Classes details</h1>
	<form action="updatedetailsclasses.jsp">
	<table>
	<tr><td>Enter the id for which records to be updated  :</td><td><input type="text" name="id" required></td></tr>
	<tr><td>Enter the updated Classname : </td><td><input type="text" name="name" required></td></tr>
	</table>
		 
		<br>
		
		<br>
		
		<input type="submit" value="updateClass">
		
	</form>
</body>
</html>