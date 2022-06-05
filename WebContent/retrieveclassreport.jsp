<%@page import="com.academy.dao.*"%>
<%@page import="com.academy.pojo.*" %>
<%@page import="java.util.*" %>
<%@page import= "java.util.ArrayList"%>
<%@page import= "java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Class Report of <%=request.getParameter("class") %></h1>
	<%
		St st = new St();
		st.setClasses(request.getParameter("class"));
		STDAO dao3=new STDAO();
		List<St> list3=dao3.getallst(st);
	%>
	<table> 
	<%int i=1; %>
	<tr><th>Sr.No</th><th>Subject</th><th>Teacher</th></tr>
	<%for(St ss:list3){ %>
		<tr><td><%=i++ %></td><td><%=ss.getSubject() %></td><td><%=ss.getTeacher() %></td></tr>
	<%}%>
	</table>

<h1>Student List</h1>
<%
	Student s = new Student();
	s.setClasses(request.getParameter("class"));
	ClassreportDAO dao4=new ClassreportDAO();
	List<Student> list=dao4.getallstudents(s);
%>
<table border="1"> 
	
	<tr><th>Id</th><th>Firstname</th><th>Lastname</th><th>DOB</th><th>Address</th><th>Phone</th></tr>
	<%for(Student ss:list){ %>
		<tr><td><%=ss.getId() %></td><td><%=ss.getFirstname() %></td><td><%=ss.getLastname() %></td><td><%=ss.getDob() %></td><td><%=ss.getAddress() %></td><td><%=ss.getPhone() %></td></tr>
	<%}%>
	</table>
	
<br>
<form action="profile.jsp">
<input type="submit" value="Home Page">
</form>
</body>
</html>