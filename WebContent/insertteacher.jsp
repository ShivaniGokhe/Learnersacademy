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
Teacher s=new Teacher();
s.setFirstname(request.getParameter("firstname"));
s.setLastname(request.getParameter("lastname"));
s.setDob(request.getParameter("dob"));
s.setAddress(request.getParameter("address"));
s.setPhone(request.getParameter("phone"));
s.setDesignation(request.getParameter("designation"));
TeacherDAO dao=new TeacherDAO();
int row=dao.insertteacher(s);
if(row>0){
	out.print("Teacher have been added successfully");
}
else{
	out.print("insertion failed");
}
%>

<a href="insertinterfaceteacher.jsp">insert more record</a>

<form action="retrieveteacher.jsp">
<input type="submit" value="Teachers List">
</form>
</body>
</html>