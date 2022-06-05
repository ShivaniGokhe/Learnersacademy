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
Student s=new Student();
s.setFirstname(request.getParameter("firstname"));
s.setLastname(request.getParameter("lastname"));
s.setDob(request.getParameter("dob"));
s.setAddress(request.getParameter("address"));
s.setPhone(request.getParameter("phone"));
s.setClasses(request.getParameter("class"));
StudentDAO dao=new StudentDAO();
int row=dao.insertstudent(s);
if(row>0){
	out.print("Student have been added successfully");
}
else{
	out.print("This student can not be added. Student with the same ID might be already exist. Please check the details");
}
%>
<br>
<a href="insertinterface.jsp">insert more record</a>
<br>

<form action="retrieve.jsp">
<input type="submit" value="Students List">

</body>
</html>