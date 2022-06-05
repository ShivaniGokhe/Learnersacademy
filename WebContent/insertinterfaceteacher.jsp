<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add New Teacher</h1>
<form action="insertteacher.jsp">
<table>

<tr><td>Firstname :</td><td><input type="text" name="firstname" required></td></tr>
<tr><td>Lastname : </td><td><input type="text" name="lastname"></td></tr>
<tr><td>DOB : </td><td><input type="date" name="dob"></td></tr>
<tr><td>Address :</td><td><input type="text" name="address" required></td></tr>
<tr><td>Phone :</td><td><input type="text" name="phone"></td></tr>
<tr><td>Designation :</td><td> <input type="text" name="designation" required></td></tr>

</table>

<br>

<input type="submit" value="Save">
</form>

</body>
</html>