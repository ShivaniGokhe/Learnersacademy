<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update Teachers details</h1>
	<form action="updatedetailsteacher.jsp">
	<table>
	<tr><td>Enter the id for which records to be updated  : </td><td><input type="text" name="id" required></td></tr>
	<tr><td>Enter the updated Firstname :</td><td> <input type="text" name="firstname" required></td></tr>
	<tr><td>Enter the updated Lastname :</td><td><input type="text" name="lastname"></td></tr>
	<tr><td>Enter the updated DOB :</td><td><input type="date" name="dob"></td></tr>
	<tr><td>Enter the updated Address : </td><td><input type="text" name="address" required></td></tr>
	<tr><td>Enter the updated Phone : </td><td><input type="text" name="phone"></td></tr>
	<tr><td>Enter the updated Designation : </td><td><input type="text" name="designation" required></td></tr>
	
	</table>
		<br> 
		<br>
		<input type="submit" value="update">
		
	</form>

</body>
</html>