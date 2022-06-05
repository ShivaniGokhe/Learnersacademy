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
Classes s=new Classes();
s.setName(request.getParameter("name"));
ClassesDAO dao=new ClassesDAO();
int row=dao.insertclass(s);
if(row>0){
	out.print("insertion is successfull");
}
else{
	out.print("insertion failed");
}
%>
<br>
<a href="insertinterfaceclasses.jsp">insert more record</a>
<br>

<form action="retrieveclasses.jsp">
<input type="submit"value="Class List">
</form>
</body>
</html>