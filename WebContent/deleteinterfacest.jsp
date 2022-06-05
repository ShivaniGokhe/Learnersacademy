<%@page import="com.academy.dao.*"%>
<%@page import="com.academy.pojo.*" %>
<%@page import="java.util.*" %>
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
ClassesDAO dao2=new ClassesDAO();
List<Classes> list2=dao2.getallclasses();
SubjectDAO dao=new SubjectDAO();
List<Subject> list=dao.getallsubjects();
TeacherDAO dao1=new TeacherDAO();
List<Teacher> list1=dao1.getallteachers();
%>
<form action="deletest.jsp">
<label for="class">Choose a Class:</label>

<select name="class" id="class">

<%for(Classes ss:list2){ %>	
  <option value="<%=ss.getName() %>"><%=ss.getName() %></option>
  <%}%>
</select>
<br>
<label for="subject">Choose a Subject:</label>

<select name="subject" id="subject">

<%for(Subject ss:list){ %>	
  <option value="<%=ss.getName() %>"><%=ss.getName() %></option>
  <%}%>
</select>
<br>

<label for="teacher">Choose a Teacher:</label>
<select name="teacher" id="teacher">

<%for(Teacher ss:list1){ %>	
  <option value="<%=ss.getFirstname() %>"><%=ss.getFirstname() %></option>
  <%}%>
</select>
<br>
		
		<input type="submit" value="delete">
</form>
</body>
</html>